import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

@freezed
class ErrorResponse with _$ErrorResponse {
  static const String unauthorizedMessage = 'Unauthorized';

  const factory ErrorResponse({
    @JsonKey(name: 'is_success') bool? isSuccess,
    @JsonKey(name: 'message') String? message,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
