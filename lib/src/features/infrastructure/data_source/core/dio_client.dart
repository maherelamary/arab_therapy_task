import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:arab_therapy_task/src/core/app_config.dart';
import 'package:arab_therapy_task/src/features/infrastructure/data_source/core/interceptors/log_in_interceptor.dart';

enum EnvironmentState { dev, production }

@LazySingleton()
class DioClient {
  static String baseUrl = AppConfiguration.baseApiUrl;
  static String? _auth;
  late Dio _dio;

  DioClient() {
    _dio = _createDio();
    _dio.interceptors.add(AppLogInterceptor());
  }

  Dio get dio {
    return _dio;
  }

  BaseOptions _defaultBaseOptions() => BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          if (_auth != null) ...{
            'Authorization': _auth,
          },
        },
        validateStatus: (status) => status != null && status > 0,
        connectTimeout: 60000,
      );

  Dio _createDio() {
    return Dio(_defaultBaseOptions());
  }

  Future<Response> getRequest(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _dio.get(url, queryParameters: queryParameters);
  }

  Future<Response> postRequest(
    String url, {
    Map<String, dynamic>? data,
    FormData? formData,
    Options? options,
  }) async {
    if (formData != null) {
      _dio.options.headers = {
        "Content-type": "multipart/form-data",
        if (_auth != null) ...{
          'Authorization': _auth,
        },
      };
    } else {
      _dio.options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        if (_auth != null) ...{
          'Authorization': _auth,
        },
      };
    }
    return await _dio.post(url, data: formData ?? data, options: options);
  }
}
