import 'package:domain/src/model/game/game_input.dart';
import 'package:domain/src/model/game/game_output.dart';
import 'package:domain/src/repository/game_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetGamesUseCase {
  final GameRepository repository;

  GetGamesUseCase({
    required this.repository,
  });

  Future<GameOutput> call(GameInput input) {
    return repository.getGames(input);
  }
}
