import 'package:ahd/theme/color_managment.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
                      LocaleKeys.sixmaile.tr(),
                      style: TextStyle(
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
                      LocaleKeys.woman.tr(),
                      style: TextStyle(
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
