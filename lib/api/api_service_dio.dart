import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  static final Dio dio = Dio(BaseOptions(
    baseUrl: 'https://your-api-base-url.com/api/',
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
          print('Error: ${e.response?.statusCode} - ${e.message}');
          return handler.next(e);
        },
      ),
    );
  }

  static Future<Response?> get(String endpoint,
      {Map<String, dynamic>? query}) async {
    try {
      return await dio.get(endpoint, queryParameters: query);
    } catch (e) {
      print('GET error: $e');
      return null;
    }
  }

  static Future<Response?> post(String endpoint, {dynamic data}) async {
    try {
      return await dio.post(endpoint, data: data);
    } catch (e) {
      print('POST error: $e');
      return null;
    }
  }

  static Future<Response?> put(String endpoint, {dynamic data}) async {
    try {
      return await dio.put(endpoint, data: data);
    } catch (e) {
      print('PUT error: $e');
      return null;
    }
  }

  static Future<Response?> delete(String endpoint,
      {Map<String, dynamic>? data}) async {
    try {
      return await dio.delete(endpoint, data: data);
    } catch (e) {
      print('DELETE error: $e');
      return null;
    }
  }
}
