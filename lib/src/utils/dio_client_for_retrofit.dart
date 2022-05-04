import 'dart:developer';

import "package:dio/dio.dart";

class DioClientForRetrofit {
  final String? bearerToken;
  final String? contentType;
  final ResponseType responseType;
  DioClientForRetrofit(
      {this.bearerToken,
      this.contentType,
      this.responseType = ResponseType.json});

  Map<String, dynamic>? get headers {
    if (bearerToken != null) {
      return {
        "Authorization": "Bearer $bearerToken",
        "Content-Type": contentType ?? "application/json",
        "Accept": "application/json",
        "Accept-Encoding": 'gzip,compress'
      };
    }
    return {
      "Content-Type": contentType ?? "application/json",
      "Accept": "application/json",
      "Accept-Encoding": "gzip,compress"
    };
  }

  Dio init() {
    Dio _dio = Dio();
    _dio.interceptors.add(loggerInterceptor);
    BaseOptions options = BaseOptions(
        headers: headers,
        responseType: responseType,
        receiveDataWhenStatusError: true);
    _dio.options = options;
    return _dio;
  }
}

final loggerInterceptor =
    InterceptorsWrapper(onRequest: (RequestOptions options, handler) {
  String headers = "";
  options.headers.forEach((key, value) {
    headers += "| $key: $value";
  });
  log("┌------------------------------------------------------------------------------");
  log("| [DIO] Request: ${options.method} ${options.uri}");
  log("| ${options.data != null ? options.data.toString() : ''}");
  log("| Headers: $headers");
  log("├------------------------------------------------------------------------------");
  handler.next(options); //continue
}, onResponse: (Response response, handler) async {
  if (response.requestOptions.path != "v1/user/me/terms-and-conditions") {
    log("| [DIO] Response [code ${response.statusCode}]:${response.data.toString()}");
  } else {
    log("| [DIO] Response [code ${response.statusCode}]");
  }
  log("└------------------------------------------------------------------------------");
  handler.next(response);
  // return response; // continue
}, onError: (DioError error, handler) async {
  log("| [DIO] Error: ${error.error}: ${error.response?.toString()}");
  log("└------------------------------------------------------------------------------");
  handler.next(error); //continue
});
