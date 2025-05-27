import 'package:ahd/theme/color_managment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Gender { male, female }

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  GenderSelectorState createState() => GenderSelectorState();
}

class GenderSelectorState extends State<GenderSelector> {
  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = Gender.male;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: selectedGender == Gender.male
                    ? AppColors.blu
                    : AppColors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.blu),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.male,
                        color: selectedGender == Gender.male
                            ? AppColors.white
                            : AppColors.blu),
                    SizedBox(width: 8),
                    Text(
                      "ذكر",
                      style: GoogleFonts.cairo(
                        color: selectedGender == Gender.male
                            ? AppColors.white
                            : AppColors.blu,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = Gender.female;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: selectedGender == Gender.female
                    ? AppColors.blu
                    : AppColors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.blu),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.female,
                        color: selectedGender == Gender.female
                            ? AppColors.white
                            : AppColors.blu),
                    SizedBox(width: 8),
                    Text(
                      "أنثى",
                      style: GoogleFonts.cairo(
                        color: selectedGender == Gender.female
                            ? AppColors.white
                            : AppColors.blu,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
