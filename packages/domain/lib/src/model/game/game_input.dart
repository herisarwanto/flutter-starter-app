import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_input.freezed.dart';

@freezed
class GameInput with _$GameInput {
  const factory GameInput({
    @Default(1) int page,
    @Default(5) int pageSize,
    @Default('187') String platforms,
    @Default('') String dates,
    @Default('-released') String ordering,
  }) = _GameInput;
}
