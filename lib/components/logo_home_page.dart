import 'package:ahd/Theme/color_managment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoHomePage extends StatelessWidget {
  final String imagePath;

  const LogoHomePage({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(19),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(imagePath),
      ),
    );
  }
}
