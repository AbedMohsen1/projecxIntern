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
    dio.interceptors.clear();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final prefs = await SharedPreferences.getInstance();
          final token = prefs.getString('token');
          final countryId = prefs.getInt('country_id');

          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          if (countryId != null) {
            options.headers['country-id'] = countryId.toString();
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
  final response = await ServiceDio.dio.get('/LockUp/Countries');

  if (response.statusCode == 200) {
    final List data = response.data['data'];
    return data.map((e) => Country.fromJson(e)).toList();
  } else {
    throw Exception('فشل تحميل الدول');
  }
}

Future<bool> fetchExclusiveCouponsService() async {
  try {
    final response = await ServiceDio.dio.get('/Home/GetExclusiveCoupons');
    print(response);
    return true;
    // if (response.statusCode == 200 && response.data['data'] is List) {
    //   return response.data['data'];
    // } else {
    //   return [];
    // }
  } catch (e) {
    print("Error fetching exclusive coupons: $e");
    return false;
  }
}

Future<bool> fetchBestCouponsOffersService() async {
  try {
    final response = await ServiceDio.dio.get('/Home/GetBestCouponsOffers');
    print(response);
    return true;
    // if (response.statusCode == 200 && response.data['data'] is List) {
    //   return response.data['data'];
    // } else {
    //   return [];
    // }
  } catch (e) {
    print("Error fetching best coupons: $e");
    return false;
  }
}

Future<bool> fetchMostPopularStoresService() async {
  try {
    final response = await ServiceDio.dio.get('/Home/GetMostPopularStores');
    print(response);
    return true;
    // if (response.statusCode == 200 && response.data['data'] is List) {
    //   return response.data['data'];
    // } else {
    //   return [];
    // }
  } catch (e) {
    print("Error fetching popular stores: $e");
    return false;
  }
}

Future<bool> fetchCategoriesService() async {
  try {
    final response = await ServiceDio.dio.get('/Home/GetCategories');
    print(response);
    return true;
    // if (response.statusCode == 200 && response.data['data'] is List) {
    //   return response.data['data'];
    // } else {
    //   return [];
    // }
  } catch (e) {
    print("Error fetching categories: $e");
    return false;
  }
}
