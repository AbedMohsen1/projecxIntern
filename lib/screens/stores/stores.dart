// ignore_for_file: camel_case_types

import 'package:ahd/Theme/color_managment.dart';
import 'package:flutter/material.dart';

class Stores extends StatefulWidget {
  const Stores({super.key});

  @override
  State<Stores> createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backTest,
          centerTitle: true,
          title: Text(
            "المتاجر",
          ),
        ),
        body: Center(child: Text("المتاجر")));
  }
}
