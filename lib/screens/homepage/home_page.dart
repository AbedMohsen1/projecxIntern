// ignore_for_file: camel_case_types

import 'package:ahd/components/logo_home_page.dart';
import 'package:ahd/theme/color_managment.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  ),
                  SizedBox(width: 15),
                  LogoHomePage(
                    imagePath: 'img/img2.svg',
                  ),
                  SizedBox(width: 15),
                  LogoHomePage(
                    imagePath: 'img/img3.svg',
                  ),
                  SizedBox(width: 15),
                  LogoHomePage(
                    imagePath: 'img/img4.svg',
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
              child: Row(
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
              ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        LogoHomePage(
                          imagePath: 'img/img10.svg',
                        ),
                        SizedBox(width: 5),
                        Text(
                          "الصحة والجمال",
                          style: TextStyle(color: AppColors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        LogoHomePage(
                          imagePath: 'img/img10.svg',
                        ),
                        SizedBox(width: 5),
                        Text(
                          "الصحة والجمال",
                          style: TextStyle(color: AppColors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                imagePath: 'img/img12.svg',
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Text(
                                    "متجر امازون",
                                    style: const TextStyle(fontSize: 12),
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
                                style: const TextStyle(fontSize: 14),
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
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                imagePath: 'img/img12.svg',
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Text(
                                    "متجر امازون",
                                    style: const TextStyle(fontSize: 12),
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
                                style: const TextStyle(fontSize: 14),
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
                  ),
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
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                imagePath: 'img/img13.svg',
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Text(
                                    "متجر امازون",
                                    style: const TextStyle(fontSize: 12),
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
                                style: const TextStyle(fontSize: 14),
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
                                  'إظهار القسيمة',
                                  style: TextStyle(color: AppColors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                imagePath: 'img/img13.svg',
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Text(
                                    "متجر امازون",
                                    style: const TextStyle(fontSize: 12),
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
                                style: const TextStyle(fontSize: 14),
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
                                  'إظهار القسيمة',
                                  style: TextStyle(color: AppColors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
                              Image.asset('img/img14.jpg'),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Text(
                                    "متجر امازون",
                                    style: const TextStyle(fontSize: 12),
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
                                style: const TextStyle(fontSize: 14),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'ريال 1500',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.black,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'ريال 2500',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.dis,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              Image.asset('img/img14.jpg'),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Text(
                                    "متجر امازون",
                                    style: const TextStyle(fontSize: 12),
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
                                style: const TextStyle(fontSize: 14),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'ريال 1500',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.black,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'ريال 2500',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.dis,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
