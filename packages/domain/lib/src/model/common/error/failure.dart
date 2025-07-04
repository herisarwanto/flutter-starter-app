import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.noFailure() = NoFailure;

  const factory Failure.requestFailure() = RequestFailure;

  const factory Failure.connectionUnavailableFailure() =
      ConnectionUnavailableFailure;

  const factory Failure.error({
    @Default('') String message,
  }) = ErrorFailure;

  const factory Failure.serverFailure() = ServerFailure;

  const factory Failure.userHasNotLogin() = HasNotLoginFailure;

  const factory Failure.tokenExpired() = TokenExpiredFailure;
}
