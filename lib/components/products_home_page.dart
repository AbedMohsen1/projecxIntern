import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ProductsHomePage extends StatelessWidget {
  const ProductsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        Icon(Icons.favorite_border, size: 20),
                        Icon(Icons.share_outlined, size: 20),
                      ],
                    ),
                  ),
                SizedBox(height: 20),
                Image.asset(
                  'assets/img/img14.jpg',
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
                Text(
                  LocaleKeys.riyal.tr(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  LocaleKeys.riyal_dis.tr(),
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.dis,
                    decoration: TextDecoration.lineThrough,
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
