// ignore_for_file: camel_case_types

import 'package:ahd/Theme/color_managment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
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
                  SvgPicture.asset('img/img8.svg', width: 10, height: 10),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30, top: 10),
                        child: Text(
                          "جميع الحقوق محفوظة لصالح شركة حصية\n"
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
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "المتاجر الأكثر شهرة",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Image.asset('img/img7.jpg'),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Image.asset('img/img7.jpg'),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Image.asset('img/img7.jpg'),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[300],
                child: Image.asset('img/img3.png'),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[300],
                child: Image.asset('img/img2.png'),
              ),
            ],
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
          ListView(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Image.asset('img/img7.jpg'),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Image.asset('img/img7.jpg'),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Image.asset('img/img7.jpg'),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[300],
                child: Image.asset('img/img3.png'),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[300],
                child: Image.asset('img/img2.png'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[300],
                child: Image.asset('img/img1.jpg'),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[300],
                child: Image.asset('img/img3.png'),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[300],
                child: Image.asset('img/img2.png'),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Image.asset('img/img7.jpg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
