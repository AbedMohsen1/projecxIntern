import 'package:ahd/Theme/color_managment.dart';
import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  final Widget child;
  const BorderContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.white),
      ),
      child: child,
    );
  }
}
