import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:flutter/material.dart';

class OffersHomePage extends StatelessWidget {
  const OffersHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.05),
      child: Row(
        children: [
          Container(
            width: 200,
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
                            color: AppColors.blu2,
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                          child: Text(
                            'حصرياً',
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
                LogoHomePage(
                  imagePath: 'assets/img/img12.svg',
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "متجر امازون",
                      style: TextStyle(fontSize: 12),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.blu2,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "خصم 80%",
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
                  "كاميرا رياضية تعمل تحت الماء بجودة عالية وإضاءة مع شاشة",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColors.blu2,
                  ),
                  child: Text(
                    'تفعيل العرض',
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
