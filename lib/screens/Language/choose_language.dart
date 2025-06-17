import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/screens/Language/choose_country.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  String selectedLanguage = 'ar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/img/component1.svg',
            ),
            const SizedBox(height: 24),
            Text(
              'اختر اللغة',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'يرجى اختيار اللغة التي تريد، يمكنك تغييرها لاحقا من بروفايلك',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.dis,
              ),
            ),
            const SizedBox(height: 40),
            buildLanguageOption(
                title: 'اللغة العربية',
                code: 'ar',
                OnTap: () {
                  setState(() {
                    selectedLanguage = 'ar';
                    context.setLocale(const Locale('ar'));
                  });
                }),
            const SizedBox(height: 20),
            buildLanguageOption(
                title: 'English',
                code: 'en',
                OnTap: () {
                  setState(() {
                    selectedLanguage = 'en';
                    context.setLocale(const Locale('en'));
                  });
                }),
            const Spacer(),
            ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();

                await prefs.setBool('language_selected', true);
                await prefs.setString('language_code', selectedLanguage);

                context.setLocale(Locale(selectedLanguage));

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChooseCountry()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
                backgroundColor: AppColors.blu,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'التالي',
                    style: TextStyle(color: AppColors.white),
                  ),
                  const SizedBox(width: 8),
                  Icon(Icons.arrow_forward, color: AppColors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildLanguageOption(
      {required String title, required String code, required OnTap}) {
    bool isSelected = selectedLanguage == code;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLanguage = code;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColors.white : AppColors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: OnTap,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.black,
                  ),
                ),
              ),
              if (isSelected)
                Icon(Icons.check_circle, color: AppColors.blu)
              else
                const SizedBox(width: 24),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ),
    );
  }
}
