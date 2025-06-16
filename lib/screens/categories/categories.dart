import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/models/data_model.dart';
import 'package:ahd/screens/categories/categories_home_page.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.blu,
          centerTitle: true,
          title: Text(
            LocaleKeys.categories.tr(),
            style: TextStyle(color: AppColors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 0.05),
                    child: Text(
                      LocaleKeys.most_popular_categories.tr(),
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
                    SizedBox(
                      width: 20,
                    ),
                    CategoriesHomePage(),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 0.05),
                    child: Text(
                      LocaleKeys.all_categories.tr(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.035),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 3.0,
                  children: categories.map((item) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.white,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            item["icon"]!,
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(width: 5),
                          Text(
                            item["name"]!,
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
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
