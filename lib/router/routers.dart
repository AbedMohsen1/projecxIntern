import 'package:ahd/screens/bottom_main_screen.dart';
import 'package:flutter/material.dart';

class Routers {
  var routers = {
    BottomBarScreen.routeName: (context) => BottomBarScreen(),
  };

  void navigateToBottomBarScreen(BuildContext context,
      {Map<String, dynamic>? args}) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        arguments: args, BottomBarScreen.routeName, (route) => false);
  }
}
