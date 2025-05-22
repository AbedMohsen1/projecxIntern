import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoHomePage extends StatelessWidget {
  final String imagePath;
  final BoxDecoration? decoration;

  const LogoHomePage({
    super.key,
    required this.imagePath,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(19),
        decoration: decoration,
        child: SvgPicture.asset(imagePath),
      ),
    );
  }
}
