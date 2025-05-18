// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class stores extends StatefulWidget {
  const stores({super.key});

  @override
  State<stores> createState() => _storesState();
}

class _storesState extends State<stores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("المتاجر")));
  }
}
