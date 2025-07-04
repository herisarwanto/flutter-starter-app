import 'package:data/src/config/data_source_config.dart';
import 'package:data/src/model/game/game_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'game_remote_data_source.g.dart';

@LazySingleton()
@RestApi()
abstract class GameRemoteDataSource {
  @factoryMethod
  factory GameRemoteDataSource(Dio dio, DataSourceConfig config) =>
      _GameRemoteDataSource(
        dio,
        baseUrl: config.restGameOnlineBaseUrl,
      );

  @GET('/games')
  Future<GameResponse> getGames({
    @Query('dates') required String dates,
    @Query('ordering') required String ordering,
    @Query('page') required String page,
    @Query('page_size') required String pageSize,
    @Query('platforms') required String platforms,
    @Query('key') required String apiKey,
  });
}
