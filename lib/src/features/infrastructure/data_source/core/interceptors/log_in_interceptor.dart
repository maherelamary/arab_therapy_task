import 'package:dio/dio.dart';

class AppLogInterceptor extends Interceptor {
  AppLogInterceptor();
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // AppLogger.detailedLog(
    //     title: "LOG ON-REQUEST",
    //     message:
    //         "method => ${options.method} \n headers => ${options.headers} \n endpoint => ${options.baseUrl}${options.path} \n queryParams => ${options.queryParameters} \n data => ${options.data.toString()}");
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // AppLogger.detailedLog(title: "LOG ON-RESPONSE", message: response.data);
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // AppLogger.detailedLog(
    //     title: "LOG ON-ERROR",
    //     message:
    //         "${err.response?.data} \n type => ${err.type} \n message => ${err.message} \n error => ${err.error} \n stackTrace => ${err.stackTrace}  \n data-response => ${err.response?.data}  \n statusCode => ${err.response?.statusCode}  ");
    handler.next(err);
  }
}
