import 'package:ahd/screens/bottom_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLoading = false;
  String? _loginMessage;

  bool get isLoading => _isLoading;
  String? get loginMessage => _loginMessage;
  Future<void> login(String email, String password) async {
    _isLoading = true;
    _loginMessage = null;
    notifyListeners();

    await Future.delayed(Duration(seconds: 2));

    if (email == "admin@test.com" && password == "123456") {
      _loginMessage = "تم تسجيل الدخول بنجاح ✅";
      Get.to(() => BottomBarScreen());
    } else {
      _loginMessage = "فشل تسجيل الدخول ❌ البريد أو كلمة المرور غير صحيحة";
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> register(String email, String password, String username) async {
    _isLoading = true;
    _loginMessage = null;
    notifyListeners();

    await Future.delayed(Duration(seconds: 2));

    if (email.isNotEmpty && password.length >= 6 && username.isNotEmpty) {
      _loginMessage = "تم إنشاء الحساب بنجاح ✅";
      Get.to(() => BottomBarScreen());
    } else {
      _loginMessage = "فشل إنشاء الحساب ❌ادخل البيانات بشكل صحيح";
    }

    _isLoading = false;
    notifyListeners();
  }
}
