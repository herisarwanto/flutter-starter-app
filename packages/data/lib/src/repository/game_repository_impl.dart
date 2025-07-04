import 'dart:developer';

import 'package:data/src/common/mixin/failure_handler_mixin.dart';
import 'package:data/src/config/data_source_config.dart';
import 'package:data/src/data_source/game_remote_data_source.dart';
import 'package:data/src/repository/mapper/game_output_mapper.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GameRepository)
class GameRepositoryImpl extends GameRepository with FailureHandlerMixin {
  final DataSourceConfig dataSourceConfig;
  final GameRemoteDataSource gameRemoteDataSource;
  final GameOutputMapper gameOutputMapper;

  GameRepositoryImpl({
    required this.dataSourceConfig,
    required this.gameRemoteDataSource,
    required this.gameOutputMapper,
  });

  @override
  Future<GameOutput> getGames(GameInput input) async {
    try {
      final response = await gameRemoteDataSource.getGames(
        page: input.page.toString(),
        pageSize: input.pageSize.toString(),
        platforms: input.platforms,
        dates: input.dates,
        ordering: input.ordering,
        apiKey: dataSourceConfig.restGameApiKey,
      );

      return gameOutputMapper.mapFromData(response);
    } on Exception catch (e, s) {
      log('Error get games: $e', stackTrace: s);
      return GameOutput(
        error: getFailure(exception: e),
        isSuccess: false,
        games: [],
      );
    }
  }
}
