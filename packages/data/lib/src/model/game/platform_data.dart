import 'package:freezed_annotation/freezed_annotation.dart';

part 'platform_data.freezed.dart';
part 'platform_data.g.dart';

@freezed
class PlatformData with _$PlatformData {
  const factory PlatformData({
    PlatformDetailsData? platform,
  }) = _PlatformData;

  factory PlatformData.fromJson(Map<String, dynamic> json) =>
      _$PlatformDataFromJson(json);
}

@freezed
class PlatformDetailsData with _$PlatformDetailsData {
  const factory PlatformDetailsData({
    int? id,
    String? name,
    String? slug,
  }) = _PlatformDetailsData;

  factory PlatformDetailsData.fromJson(Map<String, dynamic> json) =>
      _$PlatformDetailsDataFromJson(json);
}
