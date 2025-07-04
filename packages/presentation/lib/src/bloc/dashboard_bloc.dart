import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/src/common/formatter/date_formatter.dart';
import 'package:rxdart/rxdart.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

@Injectable()
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetGamesUseCase getGamesUseCase;

  int _page = 1;
  final int _pageSize = 20;

  DashboardBloc({
    required this.getGamesUseCase,
  }) : super(const DashboardState()) {
    on<_DashboardInitEvent>(
      _onInitEvent,
      transformer: throttleDroppable(const Duration(milliseconds: 200)),
    );
  }

  EventTransformer<E> throttleDroppable<E>(Duration duration) {
    return (events, mapper) {
      return droppable<E>().call(events.throttleTime(duration), mapper);
    };
  }

  Future<void> _onInitEvent(
    _DashboardInitEvent event,
    Emitter<DashboardState> emit,
  ) async {
    await _getGamesOnline(event, emit);
  }

  Future<void> _getGamesOnline(
    DashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    if (state.hasReachedMaxGetGames) return;
    final currentDate = DateTime.now();
    final startDate = currentDate.subtract(const Duration(days: 365));

    final formatCurrentDate = formatDate(currentDate);
    final formatStartDate = formatDate(startDate);

    var params = GameInput(
      dates: '$formatStartDate,$formatCurrentDate',
      ordering: '-released',
      page: _page,
      pageSize: _pageSize,
      platforms: '187',
    );

    if (state.getGamesState is GetGamesIdleState) {
      final result = await getGamesUseCase.call(params);

      if (result.isSuccess) {
        return emit(
          state.copyWith(
            getGamesState: GetGamesState.success(
              output: result,
            ),
            hasReachedMaxGetGames: result.games.length < _pageSize,
          ),
        );
      } else {
        return emit(
          state.copyWith(
            getGamesState: GetGamesState.error(
              output: state.getGamesState.output,
            ),
            hasReachedMaxGetGames: result.games.length < _pageSize,
          ),
        );
      }
    }

    _page += 1;
    params = params.copyWith(page: _page);

    final result2 = await getGamesUseCase.call(params);
    if (result2.isSuccess) {
      final games = result2.games;
      final reachedMax = games.isEmpty || games.length < _pageSize;
      games.isEmpty
          ? emit(state.copyWith(hasReachedMaxGetGames: true))
          : emit(
              state.copyWith(
                getGamesState: GetGamesState.success(
                  output: result2.copyWith(
                    games: List.of(state.getGamesState.output.games)
                      ..addAll(games),
                  ),
                ),
                hasReachedMaxGetGames: reachedMax,
              ),
            );
    } else {
      return emit(
        state.copyWith(
          getGamesState: GetGamesState.error(
            output: state.getGamesState.output,
          ),
          hasReachedMaxGetGames: result2.games.length < _pageSize,
        ),
      );
    }
  }
}
