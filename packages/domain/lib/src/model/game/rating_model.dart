import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_model.freezed.dart';

@freezed
class RatingModel with _$RatingModel {
  const factory RatingModel({
    @Default(0) int id,
    @Default('') String title,
    @Default(0) int count,
    @Default(0.0) double percent,
  }) = _RatingModel;
}
