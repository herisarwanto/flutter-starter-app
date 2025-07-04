import 'package:data/src/model/game/game_response.dart';
import 'package:data/src/repository/mapper/game_mapper.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GameOutputMapper {
  final GameMapper gameMapper;

  const GameOutputMapper({
    required this.gameMapper,
  });

  GameOutput mapFromData(GameResponse? response) {
    if (response == null || response.results == null) {
      return const GameOutput();
    }
    return GameOutput(
      isSuccess: true,
      games: response.results
              ?.map((game) => gameMapper.mapFromData(game))
              .toList() ??
          [],
    );
  }
}
