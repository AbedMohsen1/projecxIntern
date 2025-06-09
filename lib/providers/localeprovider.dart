import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('ar'),
  ];

  Locale _locale = const Locale('ar');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!supportedLocales.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }
}
