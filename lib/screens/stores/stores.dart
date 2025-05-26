// ignore_for_file: camel_case_types

import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:ahd/models/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Stores extends StatefulWidget {
  const Stores({super.key});

  @override
  State<Stores> createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.backTest,
          centerTitle: true,
          title: Text(
            "المتاجر",
            style: TextStyle(color: AppColors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "المتاجر الأكثر شهرة",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    LogoHomePage(
                      imagePath: 'img/img4.svg',
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 20),
                    LogoHomePage(
                      imagePath: 'img/img3.svg',
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 20),
                    LogoHomePage(
                      imagePath: 'img/img2.svg',
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 20),
                    LogoHomePage(
                      imagePath: 'img/img1.svg',
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "جميع المتاجر",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: shopLogos.map((logoPath) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      padding: EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        logoPath,
                        fit: BoxFit.contain,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ));
  }
}
