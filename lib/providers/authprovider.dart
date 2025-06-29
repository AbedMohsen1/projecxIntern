// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:ahd/Theme/failure.dart';
import 'package:ahd/helpers/service_dio.dart';
import 'package:ahd/models/auth/login_model.dart';
import 'package:ahd/models/auth/login_response_model.dart';
import 'package:ahd/screens/auth/login.dart';
import 'package:ahd/screens/bottom_main_screen.dart';
import 'package:ahd/services/api/auth/login_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLoading = false;
  String? _loginMessage;

  bool get isLoading => _isLoading;
  String? get loginMessage => _loginMessage;

  // Future<void> login(
  //     String email, String password, BuildContext context) async {
  //   _isLoading = true;
  //   _loginMessage = null;
  //   notifyListeners();

  //   try {
  //     final response = await ServiceDio.dio.post(
  //       '/Auth/Login',
  //       data: {'email': email, 'password': password},
  //     );

  //     final data = response.data;

  //     if (response.statusCode == 200 && data['token'] != null) {
  //       final prefs = await SharedPreferences.getInstance();
  //       await prefs.setString('token', data['token']);

  //       _loginMessage = "Success";

  //       Get.offAll(() => BottomBarScreen());
  //     } else {
  //       _loginMessage = data['message'] ?? "فشل تسجيل الدخول ❌";
  //     }
  //   } catch (e) {
  //     _loginMessage = "حدث خطأ أثناء تسجيل الدخول ❌";
  //     print("Login error: $e");
  //   }

  //   _isLoading = false;
  //   notifyListeners();
  // }
  String? token;
  String? fullName;
  Future login({
    required LoginModel loginRequestModel,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      var response =
          await LoginApi(loginRequestModel: loginRequestModel).fetch();

      print(response);
      final LoginResponseModel loginResponseModel =
          LoginResponseModel.fromJson(response['data']);
      token = loginResponseModel.token;
      fullName = loginResponseModel.fullName;

      final userData = json.encode({'token': token, 'fullName': fullName});

      prefs.setString('userData', userData);

      return true;
    } on Failure {
      return false;
    }
  }

  bool get isAuth {
    return token != null;
  }

  Future<bool> autoLogin() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey('userData')) {
      debugPrint("no auth data");
      return false;
    } else {
      debugPrint(" data ex");

      final extractData = json.decode(prefs.getString('userData').toString())
          as Map<String, dynamic>;
      token = extractData['token'];
      fullName = extractData['fullName'];
    }

    notifyListeners();

    return true;
  }

  Future<void> register(String fullName, String email, String password) async {
    _isLoading = true;
    _loginMessage = null;
    notifyListeners();

    try {
      final response = await ServiceDio.dio.post(
        '/Auth/Register',
        data: {
          'fullName': fullName,
          'email': email,
          'password': password,
        },
      );

      final data = response.data;

      if (response.statusCode == 200 || response.statusCode == 201) {
        print("📥 حساب جديد تم إنشاؤه: $email");

        Get.offAll(() => BottomBarScreen());
        if (data['token'] != null) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('token', data['token']);
        }
      } else {
        _loginMessage = data['message'] ?? "فشل إنشاء الحساب ❌";
      }
    } catch (e) {
      _loginMessage = "حدث خطأ أثناء التسجيل ❌";
      print("Register error: $e");
    }

    _isLoading = false;
    notifyListeners();
  }

  // Future login({
  //   required LoginModel loginRequestModel,
  // }) async {
  //   try {
  //     var response =
  //         await LoginApi(loginRequestModel: loginRequestModel).fetch();
  //     print(response);

  //     return true;
  //   } on Failure {
  //     return false;
  //   }
  // }
}
