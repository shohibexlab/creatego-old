import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

class ApiResponse {
  String? resMessage;
  int? resCode;
  bool success;
  dynamic data;
  RequestOptions? requestOptions;
  ApiResponse(
      {this.resMessage,
      this.resCode,
      this.data,
      required this.success,
      this.requestOptions});
}

extension FutureExceptionHandler on Future {
  /// This will handle the exception and return the ApiResponse which contains the error message, code, success status and the request options.
  /// if success is false then the error message will be returned and data is null.
  /// if success is true then the data will be returned and error message is null or ok.
  /// Fits properly with retrofit.
  Future<ApiResponse> errorHandler() async {
    final ApiResponse _apiResponse = ApiResponse(success: false);
    return await then((successRes) {
      //Success Case -> Converting to ApiResponse
      final _res = successRes as HttpResponse<dynamic>;
      _apiResponse.success = true;
      _apiResponse.resCode = _res.response.statusCode;
      _apiResponse.resMessage = successRes.response.statusMessage;
      _apiResponse.requestOptions = successRes.response.requestOptions;
      _apiResponse.data = successRes.data;
      return _apiResponse;
    }).catchError((Object errrorRes) {
      //Error Case -> Converting to ApiResponse
      switch (errrorRes.runtimeType) {
        case DioError:
          final _dioError = (errrorRes as DioError);
          final _errorType = _dioError.type;
          _apiResponse.requestOptions = _dioError.requestOptions;
          switch (_errorType) {
            case DioErrorType.response:
              _apiResponse.resCode = _dioError.response!.statusCode;
              _apiResponse.resMessage = _dioError.response!.statusMessage;
              break;
            case DioErrorType.other:
              Type _otherErrorType = _dioError.error.runtimeType;
              switch (_otherErrorType) {
                case SocketException:
                  //Handle no Internet access
                  _apiResponse.resCode =
                      900; // 900 is custom error code for no internet
                  _apiResponse.resMessage = 'ERR_INTERNET_DISCONNECTED';
                  break;
                default:
                  //Handle Unknown error
                  _apiResponse.resCode =
                      800; // 800 is custom error code for unknown error
                  _apiResponse.resMessage =
                      'ERR_UNKNOWN - [${_dioError.message}]\n[stack_trace: ${_dioError.stackTrace}]';
              }
              break;
            case DioErrorType.connectTimeout:
              _apiResponse.resCode =
                  910; // 910 is custom error code for connect timeout
              _apiResponse.resMessage = _dioError.message;
              break;
            case DioErrorType.sendTimeout:
              _apiResponse.resCode =
                  920; // 920 is custom error code for send timeout
              _apiResponse.resMessage = _dioError.message;
              break;
            case DioErrorType.receiveTimeout:
              _apiResponse.resCode =
                  930; // 930 is custom error code for receive timeout
              _apiResponse.resMessage = _dioError.message;
              break;
            case DioErrorType.cancel:
              _apiResponse.resCode = 940; // 940 is custom error code for cancel
              _apiResponse.resMessage = _dioError.message;
              break;
          }
          break;
        default:
          //Handle Unknown error
          _apiResponse.resCode =
              801; // 801 is custom error code for unknown(1) error
          _apiResponse.resMessage =
              'ERR_UNKNOWN_1  - [${errrorRes.toString()}]';
          break;
      }
      return _apiResponse;
    });
  }
}
