import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_model.freezed.dart';

@freezed
class TagModel with _$TagModel {
  const factory TagModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String slug,
    @Default('') String language,
    @Default(0) int gamesCount,
    @Default('') String imageBackground,
  }) = _TagModel;
}
