import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:ahd/components/show_coupon_sheet.dart';
import 'package:ahd/helpers/service_dio.dart';
import 'package:ahd/screens/favorites/like_unlike.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CouponsPageHome extends StatefulWidget {
  const CouponsPageHome({super.key});

  @override
  State<CouponsPageHome> createState() => _CouponsPageHomeState();
}

class _CouponsPageHomeState extends State<CouponsPageHome> {
  List<dynamic> coupons = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    fetchBestCouponsOffersService();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (coupons.isEmpty) {
      return const Center(child: Text("لا توجد كوبونات حالياً"));
    }

    return SizedBox(
      height: 360,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coupons.length,
        itemBuilder: (context, index) {
          final coupon = coupons[index];
          return Padding(
            padding: EdgeInsets.all(screenWidth * 0.03),
            child: Container(
              width: screenWidth / 1.7,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.white,
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (coupon['isSuccess'] == true)
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppColors.blu,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            LocaleKeys.exclusively.tr(),
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const LikeUnLike(),
                        const Icon(Icons.share_outlined, size: 20),
                      ],
                    ),
                  const SizedBox(height: 20),
                  LogoHomePage(imagePath: coupon['logoPath'] ?? ''),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          coupon['storeName'] ?? '',
                          style: const TextStyle(fontSize: 12),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.blu,
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            coupon['exclusiveText'] ?? '',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    coupon['description'] ?? '',
                    style: const TextStyle(fontSize: 14),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      showCouponSheet(context); // يمكنك تمرير الكود هنا
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
          );
        },
      ),
    );
  }
}
