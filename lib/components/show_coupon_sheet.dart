import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void showCouponSheet(BuildContext context) {
  showModalBottomSheet(
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
            /// شريط العنوان مع زر الإغلاق
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "فوغا كلوسيت",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),

            SizedBox(height: 12),

            /// وصف العرض
            Text(
              "تسوق الأزياء الأوروبية في فوغا كلوسيت بخصومات تصل إلى 80٪ اليوم",
              style: TextStyle(fontSize: 14),
            ),

            SizedBox(height: 20),

            /// وصف الرمز
            Text(
              "انسخ واستخدم الرمز في فوغا كلوسيت",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),

            SizedBox(height: 10),

            /// الكود + زر النسخ
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "G2Y",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
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

            /// رابط المتجر
            GestureDetector(
              onTap: () async {
                final Uri url = Uri.parse("https://www.vogacloset.com/");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("تعذر فتح الرابط")),
                  );
                }
              },
              child: Text(
                "اذهب إلى موقع فوغا كلوسيت",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
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
