import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExclusiveCouponsHomePage extends StatelessWidget {
  const ExclusiveCouponsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.03),
            child: CouponCardWidget(
              screenWidth: screenWidth,
              logoPath: 'assets/img/img3.svg',
              code: 'NAMSHI12A',
              description: LocaleKeys.sar_35_discount.tr(),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.03),
            child: CouponCardWidget(
              screenWidth: screenWidth,
              logoPath: 'assets/img/img2.svg',
              code: 'ADM185',
              description: LocaleKeys.sar_35_discount.tr(),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.03),
            child: CouponCardWidget(
              screenWidth: screenWidth,
              logoPath: 'assets/img/img4.svg',
              code: 'SALE2025',
              description: LocaleKeys.sar_35_discount.tr(),
            ),
          ),
        ],
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
    setState(() {
      isCopied = true;
    });
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isCopied = false;
      });
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
          LogoHomePage(
            imagePath: widget.logoPath,
          ),
          GestureDetector(
            onTap: handleCopy,
            child: Container(
              color: AppColors.dottedborder,
              child: DottedBorder(
                child: Padding(
                  padding: EdgeInsets.all(10),
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
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              widget.description,
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
