import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:repository_viewer/core/network/api_endpoints.dart';

import 'dio_interceptor.dart';

class DioClient {
  // dio instance
  final Dio _dio;

  String basicAuth =
      'Basic ${base64Encode(utf8.encode("demo-client:demo-secret"))}';

  // injecting dio instance
  DioClient(this._dio) {
    _dio
      // ..options = dioBaseOptions
      ..options.baseUrl = ''
      ..options.connectTimeout =
          const Duration(seconds: ApiEndpoints.connectionTimeout)
      ..options.receiveTimeout =
          const Duration(seconds: ApiEndpoints.connectionTimeout)
      ..options.responseType = ResponseType.json
      ..interceptors.add(DioInterceptor())
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ));
  }

  BaseOptions get dioBaseOptions => BaseOptions(
        headers: headers,
      );

  Map<String, Object> get headers => {
        'accept': 'application/json',
        'content-type': 'application/json',
        'authorization': basicAuth
      };

  Map<String, dynamic>? updateHeader(String token) {
    // Map<String, dynamic> tokenMap = {'authorization': token};

    // final header = {...tokenMap, ...headers};
    headers.update("authorization", (value) => "Bearer $token");
    return null;
    // _dio.options.headers = header;
    // return header;
  }

  // Get:-----------------------------------------------------------------------
  Future<Response> get(
    String uri,
    String? token, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      _dio.options.headers = {
        "authorization": token == null ? basicAuth : "Bearer $token"
      };
      final Response response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Response> post(
    String uri,
    String? token, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      _dio.options.headers = {
        "authorization": token == null ? basicAuth : "Bearer $token"
      };
      final Response response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<Response> put(
    String uri,
    String? token, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      _dio.options.headers = {
        "authorization": token == null ? basicAuth : "Bearer $token"
      };
      final Response response = await _dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<Response> delete(
    String uri,
    String? token, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      _dio.options.headers = {
        "authorization": token == null ? basicAuth : "Bearer $token"
      };
      final Response response = await _dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
