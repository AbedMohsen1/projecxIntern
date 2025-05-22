import 'package:ahd/theme/color_managment.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconHomePageDrawerSocial extends StatelessWidget {
  final IconData iconData;
  const IconHomePageDrawerSocial({
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      FaIcon(
        iconData,
        size: 25,
        color: AppColors.blu,
      ),
      SizedBox(
        width: 5,
      )
    ]);
  }
}
