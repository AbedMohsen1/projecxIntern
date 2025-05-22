import 'package:ahd/components/coupons_home_page.dart';
import 'package:ahd/components/eclusive_coupons_home_page.dart';
import 'package:ahd/components/offers_home_page.dart';
import 'package:ahd/components/products_home_page.dart';
import 'package:ahd/screens/categories/categories_home_page.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:ahd/theme/color_managment.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'ابحث عن المتاجر-العلامات التجارية-التصنيفات',
                  hintStyle: TextStyle(fontSize: 15),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.black),
                  color: AppColors.blu2,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30, top: 10),
                          child: Text(
                            "جميع الحقوق محفوظة لصالح شركة حصيلة\n"
                            "جميع الحقوق محفوظة لصالح شركة حصيلة",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 50, right: 30),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: AppColors.black,
                          ),
                          width: 90,
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "نص وهمي",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "المتاجر الأكثر شهرة",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد", style: TextStyle(color: Colors.blue)),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward, color: Colors.blue),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  LogoHomePage(
                    imagePath: 'img/img1.svg',
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 15),
                  LogoHomePage(
                    imagePath: 'img/img2.svg',
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 15),
                  LogoHomePage(
                    imagePath: 'img/img3.svg',
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 15),
                  LogoHomePage(
                    imagePath: 'img/img4.svg',
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "الكوبونات الحصرية",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد", style: TextStyle(color: Colors.blue)),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward, color: Colors.blue),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ExclusiveCouponsHomePage(),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "أشهر التصنيفات",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد", style: TextStyle(color: Colors.blue)),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward, color: Colors.blue),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            CategoriesHomePage(),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "أشهر العروض",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد", style: TextStyle(color: Colors.blue)),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward, color: Colors.blue),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OffersHomePage(),
                  SizedBox(width: 20),
                  OffersHomePage(),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "أفضل الكوبونات",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد", style: TextStyle(color: Colors.blue)),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward, color: Colors.blue),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CouponsPageHome(),
                  SizedBox(width: 20),
                  CouponsPageHome(),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "أفضل المنتجات",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد", style: TextStyle(color: Colors.blue)),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward, color: Colors.blue),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductsHomePage(),
                  SizedBox(width: 20),
                  ProductsHomePage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
