// ignore_for_file: avoid_print

import 'package:ahd/models/data_model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum RequestType { get, post, put, delete }

class ServiceDio {
  static final Dio dio = Dio(BaseOptions(
    baseUrl: 'https://mobile.hasilh.com/api',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      'Accept': 'application/json',
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
}

Future<List<Country>> fetchCountries() async {
  final response =
      await Dio().get('https://mobile.hasilh.com/api/LockUp/Countries');

  if (response.statusCode == 200) {
    final List data = response.data['data'];
    return data.map((e) => Country.fromJson(e)).toList();
  } else {
    throw Exception('فشل تحميل الدول');
  }
}
