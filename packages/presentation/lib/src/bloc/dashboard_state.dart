part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(DashboardPageState.idle()) DashboardPageState pageState,
    @Default(GetGamesState.idle()) GetGamesState getGamesState,
    @Default(false) bool hasReachedMaxGetGames,
  }) = _DashboardState;
}

@freezed
abstract class DashboardPageState with _$DashboardPageState {
  const factory DashboardPageState.loading({
    @Default('') String loadingTitle,
    @Default('') String loadingMessage,
  }) = DashboardPageLoadingState;

  const factory DashboardPageState.idle({
    @Default('') String loadingTitle,
    @Default('') String loadingMessage,
  }) = DashboardPageIdleState;
}

@freezed
abstract class GetGamesState with _$GetGamesState {
  const factory GetGamesState.idle({
    @Default(GameOutput()) GameOutput output,
  }) = GetGamesIdleState;

  const factory GetGamesState.loading({
    @Default(GameOutput()) GameOutput output,
  }) = GetGamesLoadingState;

  const factory GetGamesState.error({
    @Default(GameOutput()) GameOutput output,
  }) = GetGamesErrorState;

  const factory GetGamesState.success({
    @Default(GameOutput()) GameOutput output,
  }) = GetGamesSuccessState;
}
