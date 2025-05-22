import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExclusiveCouponsHomePage extends StatelessWidget {
  const ExclusiveCouponsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                width: 200,
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
                      imagePath: 'img/img3.svg',
                    ),
                    DottedBorder(
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
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("ريال سعودي 35 خصم"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                width: 200,
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
                    Container(
                      padding: EdgeInsets.all(19),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SvgPicture.asset('img/img2.svg'),
                    ),
                    DottedBorder(
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
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("ريال سعودي 35 خصم"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                width: 200,
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
                      imagePath: 'img/img4.svg',
                    ),
                    DottedBorder(
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
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("ريال سعودي 35 خصم"),
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
