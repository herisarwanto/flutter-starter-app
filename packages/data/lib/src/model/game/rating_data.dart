import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_data.freezed.dart';
part 'rating_data.g.dart';

@freezed
class RatingData with _$RatingData {
  const factory RatingData({
    int? id,
    String? title,
    int? count,
    double? percent,
  }) = _RatingData;

  factory RatingData.fromJson(Map<String, dynamic> json) =>
      _$RatingDataFromJson(json);
}
