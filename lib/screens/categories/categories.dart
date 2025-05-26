// ignore_for_file: file_names

import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/models/data_model.dart';
import 'package:ahd/screens/categories/categories_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                    CategoriesHomePage(),
                    CategoriesHomePage(),
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
                padding: const EdgeInsets.all(15),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 3.5, // يجعل العنصر أفقي مثل ما بالصورة
                  children: categories.map((item) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            item["icon"]!,
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              item["name"]!,
                              style: TextStyle(color: AppColors.black),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
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
