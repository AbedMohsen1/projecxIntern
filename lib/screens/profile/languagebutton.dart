import 'package:ahd/Theme/color_managment.dart';
import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const LanguageButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 6),
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.blu : AppColors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: AppColors.blu,
            width: 1.5,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : AppColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
