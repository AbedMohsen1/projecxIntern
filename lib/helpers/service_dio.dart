// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum RequestType { get, post, put, delete }

class ServiceDio {
  static final Dio dio = Dio(BaseOptions(
    baseUrl: '',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      'Content-Type': 'application/json',
    },
  ));

  static Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    dio.interceptors.clear();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
        onError: (e, handler) {
          print('Interceptor Error: ${e.response?.statusCode} - ${e.message}');
          return handler.next(e);
        },
      ),
    );
  }

  static Future<Response?> request(
    String endpoint, {
    RequestType type = RequestType.get,
    dynamic data,
    Map<String, dynamic>? query,
  }) async {
    try {
      switch (type) {
        case RequestType.get:
          return await dio.get(endpoint, queryParameters: query);
        case RequestType.post:
          return await dio.post(endpoint, data: data);
        case RequestType.put:
          return await dio.put(endpoint, data: data);
        case RequestType.delete:
          return await dio.delete(endpoint, data: data);
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        print(" خطأ: الاتصال انتهى (Timeout)");
      } else if (e.type == DioExceptionType.receiveTimeout) {
        print(" خطأ: لم يتم استلام الرد في الوقت المحدد");
      } else if (e.type == DioExceptionType.badResponse) {
        print(" خطأ من السيرفر: ${e.response?.statusCode}");
        print(" الرسالة: ${e.response?.data}");
      } else if (e.type == DioExceptionType.unknown) {
        print(" فشل غير معروف في الاتصال بالإنترنت أو السيرفر");
      } else {
        print(" خطأ غير متوقع: ${e.message}");
      }
      return e.response;
    } catch (e) {
      print(' خطأ عام: $e');
      return null;
    }
  }
}
