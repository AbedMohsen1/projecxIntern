import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ahd/theme/color_managment.dart';

class LabelAuthText extends StatelessWidget {
  final String text;

  const LabelAuthText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Align(
        alignment: context.locale.languageCode == 'ar'
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
