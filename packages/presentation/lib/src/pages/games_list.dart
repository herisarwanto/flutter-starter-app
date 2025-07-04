import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/src/bloc/dashboard_bloc.dart';
import 'package:presentation/src/widget/bottom_loader.dart';
import 'package:presentation/src/widget/game_list_item.dart';

class GamesList extends StatefulWidget {
  const GamesList({super.key});

  @override
  State<GamesList> createState() => _GamesListState();
}

class _GamesListState extends State<GamesList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        switch (state.getGamesState) {
          case GetGamesErrorState():
            return const Center(child: Text('failed to fetch posts'));
          case GetGamesSuccessState():
            if (state.getGamesState.output.games.isEmpty) {
              return const Center(child: Text('no posts'));
            }
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return index >= state.getGamesState.output.games.length
                    ? const BottomLoader()
                    : GameListItem(
                        game: state.getGamesState.output.games[index],
                      );
              },
              itemCount: state.hasReachedMaxGetGames
                  ? state.getGamesState.output.games.length
                  : state.getGamesState.output.games.length + 1,
              controller: _scrollController,
            );
          default:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<DashboardBloc>().add(const DashboardEvent.init());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
