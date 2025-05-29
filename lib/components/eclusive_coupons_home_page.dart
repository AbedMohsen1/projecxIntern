import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class ExclusiveCouponsHomePage extends StatelessWidget {
  const ExclusiveCouponsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: Row(
            children: [
              Container(
                width: screenWidth / 2,
                margin: const EdgeInsets.symmetric(vertical: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LogoHomePage(
                      imagePath: 'assets/img/img3.svg',
                    ),
                    Container(
                      color: AppColors.dottedborder,
                      child: DottedBorder(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "NAMSHI12A",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        LocaleKeys.sar_35_discount.tr(),
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: Row(
            children: [
              Container(
                width: screenWidth / 2,
                margin: const EdgeInsets.symmetric(vertical: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LogoHomePage(
                      imagePath: 'assets/img/img2.svg',
                    ),
                    Container(
                      color: AppColors.dottedborder,
                      child: DottedBorder(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "NAMSHI12A",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        LocaleKeys.sar_35_discount.tr(),
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: Row(
            children: [
              Container(
                width: screenWidth / 2,
                margin: const EdgeInsets.symmetric(vertical: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LogoHomePage(
                      imagePath: 'assets/img/img4.svg',
                    ),
                    Container(
                      color: AppColors.dottedborder,
                      child: DottedBorder(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "NAMSHI12A",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        LocaleKeys.sar_35_discount.tr(),
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
