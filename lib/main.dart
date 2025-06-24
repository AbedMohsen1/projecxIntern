import 'package:ahd/helpers/service_dio.dart';
import 'package:ahd/providers/authprovider.dart';
import 'package:ahd/providers/homeprovider.dart';
import 'package:ahd/router/routers.dart';
import 'package:ahd/screens/Language/choose_country.dart';
import 'package:ahd/screens/Language/choose_language.dart';
import 'package:ahd/screens/auth/login.dart';
import 'package:ahd/screens/bottom_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ServiceDio.init();

  final prefs = await SharedPreferences.getInstance();

  final bool langSelected = prefs.getBool('language_selected') ?? false;
  final bool countrySelected = prefs.getBool('country_selected') ?? false;
  final String? token = prefs.getString('token');

  Widget initialScreen;

  if (!langSelected) {
    initialScreen = const ChooseLanguage();
  } else if (!countrySelected) {
    initialScreen = const ChooseCountry();
  } else if (token == null || token.isEmpty) {
    initialScreen = const Login(); // أو SignIn إذا عندك اسم مختلف
  } else {
    initialScreen = const BottomBarScreen(); // غيرها حسب اسم صفحتك الرئيسية
  }

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('ar'),
      child: ChangeNotifierProvider(
        create: (_) => AuthProvider(),
        child: MyApp(startScreen: initialScreen),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final Widget startScreen;

  const MyApp({super.key, required this.startScreen});

  @override
  Widget build(BuildContext context) {
    final Routers routers = Routers();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider<HomeProvider>(
          create: (_) => HomeProvider(),
        ),
      ],
      child: GetMaterialApp(
        theme: ThemeData(fontFamily: 'Cairo'),
        home: ChooseCountry(),
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        routes: routers.routers,
      ),
    );
  }
}
