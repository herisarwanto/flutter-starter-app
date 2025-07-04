import 'dart:io';

import 'package:data/src/model/error_response.dart';
import 'package:data/src/model/unauthorized_exception.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';

mixin FailureHandlerMixin {
  ErrorResponse? getError(dynamic exception) {
    if (exception is UnauthorizedException) {
      return ErrorResponse(isSuccess: false, message: exception.message);
    }

    if (exception is DioException) {
      final errorResponse = exception.response?.data;
      if (errorResponse is Map<String, dynamic>) {
        return ErrorResponse.fromJson(errorResponse);
      }
    }

    return null;
  }

  bool isUnauthorizedError(ErrorResponse? error) {
    if (error == null) return false;

    final errorMessage = error.message ?? '';
    return errorMessage
        .toLowerCase()
        .contains(ErrorResponse.unauthorizedMessage.toLowerCase());
  }

  Failure getFailure({
    required Exception exception,
    int attempt = 0,
  }) {
    if (exception is SocketException) {
      debugPrint('SocketFailure ${exception.toString()}');
      return const Failure.connectionUnavailableFailure();
    }

    if (exception is DioException) {
      final message = exception.toString();
      debugPrint('DioException $message');
      return Failure.error(
        message: message,
      );
    }

    debugPrint('RequestFailure ${exception.toString()}');
    return const Failure.requestFailure();
  }
}
