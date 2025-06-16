// ignore_for_file: use_build_context_synchronously

import 'package:ahd/Theme/color_managment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void showCouponSheet(BuildContext context) {
  void launchurl() async {
    final Uri url = Uri.parse("https://www.vogacloset.com/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("تعذر فتح الرابط")),
      );
    }
  }

  showModalBottomSheet(
    backgroundColor: AppColors.white,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (_) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () => Navigator.pop(context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "فوغا كلوسيت",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "تسوق الأزياء الأوروبية في فوغا كلوسيت بخصومات تصل إلى 80٪ اليوم",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("فوغا كلوسيت",
                    style: TextStyle(
                      color: AppColors.blu,
                    )),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    visualDensity: const VisualDensity(
                      vertical: VisualDensity.minimumDensity,
                      horizontal: VisualDensity.minimumDensity,
                    ),
                  ),
                  child: Text(
                    "انسخ والصق الرمز في",
                    style: TextStyle(
                        color: AppColors.borderauth,
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "G2Y",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.copy),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: "G2Y"));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("تم نسخ الرمز")),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                launchurl();
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "عرض فوغا كلوسيت",
                  style: TextStyle(
                    color: AppColors.blu,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}
