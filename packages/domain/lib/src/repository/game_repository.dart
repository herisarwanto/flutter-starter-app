import 'package:domain/src/model/game/game_input.dart';
import 'package:domain/src/model/game/game_output.dart';

abstract class GameRepository {
  Future<GameOutput> getGames(GameInput input);
}
