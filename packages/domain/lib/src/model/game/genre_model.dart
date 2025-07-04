import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_model.freezed.dart';

@freezed
class GenreModel with _$GenreModel {
  const factory GenreModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String slug,
  }) = _GenreModel;
}
