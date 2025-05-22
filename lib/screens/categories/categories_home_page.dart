import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:flutter/material.dart';

class CategoriesHomePage extends StatelessWidget {
  const CategoriesHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.border),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                LogoHomePage(
                  imagePath: 'img/img10.svg',
                ),
                SizedBox(width: 5),
                Text(
                  "الصحة والجمال",
                  style: TextStyle(color: AppColors.black),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.border),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                LogoHomePage(
                  imagePath: 'img/img10.svg',
                ),
                SizedBox(width: 5),
                Text(
                  "الصحة والجمال",
                  style: TextStyle(color: AppColors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
