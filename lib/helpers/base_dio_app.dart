// ignore_for_file: constant_pattern_never_matches_value_type, prefer_collection_literals, avoid_print

import 'dart:io';

import 'package:ahd/helpers/requests_enum.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

class Failure {
  String message;
  Failure(this.message);
  @override
  String toString() => message;
}

class BaseDioApi {
  String? token;
  final Dio _dio = Dio();

  late Response _response;
  Map<String, dynamic>? toHeaders = Map<String, dynamic>();
  final String url;
  BaseDioApi(
    this.url,
  );

  Map<String, dynamic> queryParameters() {
    return {};
  }

  void addToHeaders(String key, String value) {
    toHeaders![key] = value;
  }

  dynamic headers() {
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Map<String, dynamic>> sendRequest(
    Enum type,
    dynamic callToken, {
    required bool isAuthenticated,
  }) async {
    if (isAuthenticated) {
      addToHeaders('Content-Type', 'application/json');
      addToHeaders('Authorization', 'Bearer ${callToken.token}');
    }

    print('object from request $type');

    switch (type) {
      case requests.get:
        return await _getRequest();
      case requests.post:
        return await _postRequest();
      case requests.put:
        return await _putRequest();
      case requests.delete:
        return await _deleteRequest();
      default:
        return await _deleteRequest();
    }
  }

  static bool tokenEnd = false;

  dynamic body() {}

  Future<Map<String, dynamic>> _postRequest() async {
    debugPrint('url $url');
    debugPrint('body ${body()}');
    print('body ${body()}');
    print('queryParameters ${queryParameters()}');

    // ignore: unnecessary_brace_in_string_interps
    debugPrint('headers ${toHeaders}');
    try {
      _response = await _dio.post(
        url,
        options: Options(headers: toHeaders),
        queryParameters: queryParameters(),
        data: body(),
      );
      if (_response.statusCode == 401) {
        tokenEnd = true;
        print('this is error');
      }
      print(_response.data);
      return _response.data;
    } on DioException catch (e) {
      debugPrint(e.response.toString());
      if (e.response?.statusCode == 401) {
        tokenEnd = true;
        print('this is error');
      }
      e.response?.statusCode == 401 ? tokenEnd = true : null;

      debugPrint(e.message);
      debugPrint("${e.response}");

      // UIHelper.showNotification(e.response!.data['error']['details']);
      print(e.response);
      switch (e) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.unknown:
          throw Failure("Timeout request");
        case DioExceptionType.badResponse:
          e.response?.statusCode == 401 ? tokenEnd = true : false;
          throw e.response?.statusCode == 401
              ? throw Failure("Request cancelled")
              : throw Failure("Request cancelled");

        // ignore: unreachable_switch_case
        case DioExceptionType.badResponse:
          debugPrint(e.response?.statusMessage);
          throw Failure(e.error.toString());
        case DioExceptionType.cancel:
          throw Failure("Request cancelled");
        // ignore: unreachable_switch_case
        case DioExceptionType.unknown:
          {
            if (e.error is SocketException) {
              throw Failure('No Internet connection');
            } else if (e.response?.statusCode == 401) {
              tokenEnd = true;
              throw Failure("Token End");
            } else if (e.error is FormatException) {
              throw Failure("Bad response format");
            } else {
              throw Failure("Something Wrong");
            }
          }
      }
    }
    throw Failure("Unexpected error occurred during POST request");
  }

  Future<Map<String, dynamic>> _getRequest() async {
    addToHeaders('Accept-Language', LocaleKeys.language.tr());
    // ignore: unnecessary_brace_in_string_interps
    debugPrint('headers ${toHeaders}');

    debugPrint('uwrl $token');
    debugPrint('url $url');
    debugPrint('queryParameters ${queryParameters()}');
    // ignore: unnecessary_brace_in_string_interps
    debugPrint('headers ${toHeaders}');

    try {
      _response = await _dio.get(
        url,
        options: Options(
          headers: toHeaders,
        ),
        queryParameters: queryParameters(),
      );
      print(_response.data);
      return _response.data;
    } on DioException catch (e) {
      // UIHelper.showNotification(e.response!.data['message']);

      print(e.response);

      switch (e) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          throw Failure("Timeout request");
        case DioExceptionType.badResponse:
          throw e.response?.statusCode == 404
              ? throw Failure("Request cancelled")
              : throw Failure(e.error.toString());

        case DioExceptionType.cancel:
          throw Failure("Request cancelled");
        case DioExceptionType.unknown:
          {
            if (e.error is SocketException) {
              throw Failure('No Internet connection');
            } else if (e.error is FormatException) {
              throw Failure("Bad response format");
            } else {
              throw Failure("Something Wrong");
            }
          }
      }
    }
    throw Failure("Unexpected error occurred during POST request");
  }

  Future<Map<String, dynamic>> _putRequest() async {
    debugPrint('url $url');
    debugPrint('queryParameters ${queryParameters()}');
    debugPrint('url $url');
    debugPrint('body ${body()}');
    try {
      _response = await _dio.put(
        url,
        options: Options(
          headers: toHeaders,
        ),
        queryParameters: queryParameters(),
        data: body(),
      );
      return _response.data;
    } on DioException catch (e) {
      switch (e) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          throw Failure("Timeout request");
        case DioExceptionType.badResponse:
          throw Failure(e.error.toString());
        case DioExceptionType.cancel:
          throw Failure("Request cancelled");
        case DioExceptionType.unknown:
          {
            if (e.error is SocketException) {
              throw Failure('No Internet connection');
            } else if (e.error is FormatException) {
              throw Failure("Bad response format");
            } else {
              throw Failure("Something Wrong");
            }
          }
      }
    }
    throw Failure("Unexpected error occurred during POST request");
  }

  Future<Map<String, dynamic>> _deleteRequest() async {
    try {
      _response = await _dio.delete(
        url,
        options: Options(
          headers: toHeaders,
        ),
        queryParameters: queryParameters(),
        data: body(),
      );
      return _response.data;
    } on DioException catch (e) {
      switch (e) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          throw Failure("Timeout request");
        case DioExceptionType.badResponse:
          throw Failure(e.error.toString());
        case DioExceptionType.cancel:
          throw Failure("Request cancelled");
        case DioExceptionType.unknown:
          {
            if (e.error is SocketException) {
              throw Failure('No Internet connection');
            } else if (e is FormatException) {
              throw Failure("Bad response format");
            } else {
              throw Failure("Something Wrong");
            }
          }
      }
    }
    throw Failure("Unexpected error occurred during POST request");
  }
}
