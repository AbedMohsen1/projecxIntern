import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:ahd/helpers/service_dio.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExclusiveCouponsHomePage extends StatefulWidget {
  const ExclusiveCouponsHomePage({super.key});

  @override
  State<ExclusiveCouponsHomePage> createState() =>
      _ExclusiveCouponsHomePageState();
}

class _ExclusiveCouponsHomePageState extends State<ExclusiveCouponsHomePage> {
  List<dynamic> coupons = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    fetchExclusiveCouponsService();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (coupons.isEmpty) {
      return const Center(child: Text('لا توجد كوبونات حالياً'));
    }

    return SizedBox(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coupons.length,
        itemBuilder: (context, index) {
          final coupon = coupons[index];
          return Padding(
            padding: EdgeInsets.all(screenWidth * 0.03),
            child: CouponCardWidget(
              screenWidth: screenWidth,
              logoPath: coupon['logoPath'] ?? '',
              code: coupon['coupon'] ?? '',
              description: coupon['name'] ?? '',
            ),
          );
        },
      ),
    );
  }
}

class CouponCardWidget extends StatefulWidget {
  final double screenWidth;
  final String logoPath;
  final String code;
  final String description;

  const CouponCardWidget({
    required this.screenWidth,
    required this.logoPath,
    required this.code,
    required this.description,
    super.key,
  });

  @override
  State<CouponCardWidget> createState() => _CouponCardWidgetState();
}

class _CouponCardWidgetState extends State<CouponCardWidget> {
  bool isCopied = false;

  void handleCopy() async {
    await Clipboard.setData(ClipboardData(text: widget.code));
    setState(() => isCopied = true);
    Future.delayed(const Duration(seconds: 2), () {
      setState(() => isCopied = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.screenWidth / 2,
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.border,
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LogoHomePage(imagePath: widget.logoPath),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: handleCopy,
            child: Container(
              color: AppColors.dottedborder,
              child: DottedBorder(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    isCopied ? 'تم النسخ ✅' : widget.code,
                    style: TextStyle(
                      fontSize: 12,
                      color: isCopied ? Colors.green : AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            widget.description,
            style: const TextStyle(),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
