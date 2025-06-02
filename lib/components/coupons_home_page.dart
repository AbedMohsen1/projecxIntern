import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:ahd/components/show_coupon_sheet.dart';
import 'package:ahd/screens/favorites/like_unlike.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CouponsPageHome extends StatelessWidget {
  const CouponsPageHome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.05),
      child: Row(
        children: [
          Container(
            width: screenWidth / 1.7,
            margin: const EdgeInsets.symmetric(vertical: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 6,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (true)
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.blu,
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                          child: Text(
                            LocaleKeys.exclusively.tr(),
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.blu,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        LikeUnLike(),
                        Icon(Icons.share_outlined, size: 20),
                      ],
                    ),
                  ),
                SizedBox(height: 20),
                LogoHomePage(
                  imagePath: 'assets/img/img13.svg',
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      LocaleKeys.amazon_store.tr(),
                      style: TextStyle(fontSize: 12),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.blu,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          LocaleKeys.discount.tr(),
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  LocaleKeys.high_quality.tr(),
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    showCouponSheet(context);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColors.blu,
                  ),
                  child: Text(
                    LocaleKeys.show_coupon.tr(),
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
