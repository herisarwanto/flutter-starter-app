import 'package:domain/src/model/common/error/failure.dart';
import 'package:domain/src/model/game/game_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_output.freezed.dart';

@freezed
class GameOutput with _$GameOutput {
  const factory GameOutput({
    @Default(false) bool isSuccess,
    @Default(Failure.noFailure()) Failure error,
    @Default('') String message,
    @Default([]) List<GameModel> games,
  }) = _GameOutput;
}
