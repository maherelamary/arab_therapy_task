import 'package:dio/dio.dart' show DioError, DioErrorType;
import 'package:arab_therapy_task/src/core/object/failure/failure.dart';
import 'package:arab_therapy_task/src/features/common/utils/constants.dart';

class FailureHelper {
  static Failure getAppropriateFailureFromDioError(DioError err) {
    if (err.type == DioErrorType.response) {
      if (err.response?.statusCode == 401) {
        return const Failure.unAuthenticationFailure();
      }
      if (err.response?.statusCode == 400) {
        return Failure.serverFailure(err.response?.data["message"]);
      }
    }
    if (err.type == DioErrorType.other) {
      if (err.message.contains("SocketException")) {
        return const Failure.noInternetConnection();
      }
    }
    return const Failure.unknownFailure();
  }

  static String getAppropriateFailureMessageFromFailure(
      {required Failure failure}) {
    return failure.maybeWhen(
      orElse: () => Constants.unknownFailureMessage,
      noInternetConnection: () => Constants.noInternetFailureMessage,
      unAuthenticationFailure: () => Constants.unauthenticatedFailureMessage,
      serverFailure: (String? message) =>
          message ?? Constants.serverFailureMessage,
    );
  }
}
