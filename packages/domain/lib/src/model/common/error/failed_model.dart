import 'package:freezed_annotation/freezed_annotation.dart';

part 'failed_model.freezed.dart';

@freezed
class FailedModel with _$FailedModel {
  const factory FailedModel({
    @Default(false) bool isSuccess,
    @Default('') String message,
    @Default(0) int errorCode,
  }) = _FailedModel;
}
