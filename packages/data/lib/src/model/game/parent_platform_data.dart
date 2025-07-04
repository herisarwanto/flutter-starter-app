import 'package:freezed_annotation/freezed_annotation.dart';
import 'platform_data.dart';

part 'parent_platform_data.freezed.dart';
part 'parent_platform_data.g.dart';

@freezed
class ParentPlatformData with _$ParentPlatformData {
  const factory ParentPlatformData({
    PlatformDetailsData? platform,
  }) = _ParentPlatformData;

  factory ParentPlatformData.fromJson(Map<String, dynamic> json) =>
      _$ParentPlatformDataFromJson(json);
}
