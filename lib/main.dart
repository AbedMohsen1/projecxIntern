import 'package:ahd/Widget/homepage.dart';
import 'package:ahd/auth/login.dart';
import 'package:ahd/auth/signup.dart';
import 'package:ahd/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ar'),
      supportedLocales: [Locale('ar')],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {
        "login": (context) => login(),
        "signup": (context) => signup(),
        "home": (context) => home(),
        "homepage": (context) => homepage(),
      },
    );
  }
}
