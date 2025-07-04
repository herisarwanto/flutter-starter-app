import 'package:freezed_annotation/freezed_annotation.dart';

part 'platform_details_model.freezed.dart';

@freezed
class PlatformDetailsModel with _$PlatformDetailsModel {
  const factory PlatformDetailsModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String slug,
  }) = _PlatformDetailsModel;
}
