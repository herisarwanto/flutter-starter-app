import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_screenshot_model.freezed.dart';

@freezed
class ShortScreenshotModel with _$ShortScreenshotModel {
  const factory ShortScreenshotModel({
    @Default(0) int id,
    @Default('') String image,
  }) = _ShortScreenshotModel;
}
