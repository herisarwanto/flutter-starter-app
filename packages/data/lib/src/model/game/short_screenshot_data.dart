import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_screenshot_data.freezed.dart';
part 'short_screenshot_data.g.dart';

@freezed
class ShortScreenshotData with _$ShortScreenshotData {
  const factory ShortScreenshotData({
    int? id,
    String? image,
  }) = _ShortScreenshotData;

  factory ShortScreenshotData.fromJson(Map<String, dynamic> json) =>
      _$ShortScreenshotDataFromJson(json);
}
