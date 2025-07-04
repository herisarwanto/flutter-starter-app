import 'package:data/src/model/game/game_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_response.freezed.dart';
part 'game_response.g.dart';

@freezed
class GameResponse with _$GameResponse {
  const factory GameResponse({
    @JsonKey(name: 'results') List<GameData>? results,
  }) = _GameResponse;

  factory GameResponse.fromJson(Map<String, dynamic> json) =>
      _$GameResponseFromJson(json);
}
