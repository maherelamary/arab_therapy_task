import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.noInternetConnection() = _NoInternetConnection;
  const factory Failure.unAuthenticationFailure() = _UnAuthenticationFailure;
  const factory Failure.serverFailure(String message) = _ServerFailure;
  const factory Failure.unknownFailure() = _UnknownFailure;
}
