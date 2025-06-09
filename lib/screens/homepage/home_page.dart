import 'package:ahd/components/coupons_home_page.dart';
import 'package:ahd/components/eclusive_coupons_home_page.dart';
import 'package:ahd/components/icon_home_page_drawer.dart';
import 'package:ahd/components/icon_home_page_drawer_social.dart';
import 'package:ahd/components/offers_home_page.dart';
import 'package:ahd/components/products_home_page.dart';
import 'package:ahd/screens/categories/categories.dart';
import 'package:ahd/screens/categories/categories_home_page.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:ahd/screens/stores/stores.dart';
import 'package:ahd/theme/color_managment.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: AppColors.white,
        child: ListView(
          padding: EdgeInsets.symmetric(),
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/img/Group8.svg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    LocaleKeys.hasilh.tr(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: AppColors.green),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/img/world.svg',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          LocaleKeys.travel_time.tr(),
                          style:
                              TextStyle(fontSize: 24, color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                IconHomePageDrawer(
                  icon: Icons.insert_drive_file_outlined,
                  text: LocaleKeys.coupons.tr(),
                ),
                IconHomePageDrawer(
                  icon: Icons.insert_drive_file_outlined,
                  text: LocaleKeys.offers.tr(),
                ),
                IconHomePageDrawer(
                  icon: Icons.insert_drive_file_outlined,
                  text: LocaleKeys.products.tr(),
                ),
                IconHomePageDrawer(
                  icon: Icons.insert_drive_file_outlined,
                  text: LocaleKeys.exclusive_coupons.tr(),
                ),
                IconHomePageDrawer(
                  icon: Icons.insert_drive_file_outlined,
                  text: LocaleKeys.blog.tr(),
                ),
                IconHomePageDrawer(
                  icon: Icons.info_outline,
                  text: LocaleKeys.about_the_outcome.tr(),
                ),
                IconHomePageDrawer(
                  icon: Icons.mail_outline,
                  text: LocaleKeys.contact_us.tr(),
                ),
                IconHomePageDrawer(
                  icon: Icons.add_circle_outline,
                  text: LocaleKeys.add_your_store.tr(),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      LocaleKeys.follow_us.tr(),
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconHomePageDrawerSocial(
                            iconData: FontAwesomeIcons.facebook),
                        IconHomePageDrawerSocial(
                            iconData: FontAwesomeIcons.instagram),
                        IconHomePageDrawerSocial(
                            iconData: FontAwesomeIcons.twitter),
                        IconHomePageDrawerSocial(
                            iconData: FontAwesomeIcons.snapchat),
                        IconHomePageDrawerSocial(
                          iconData: FontAwesomeIcons.telegram,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
          backgroundColor: AppColors.white,
          actions: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.03),
              child: Image.asset(
                'assets/img/img15.jpg',
              ),
            )
          ],
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/img/Group8.svg',
                width: 35,
                height: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                LocaleKeys.hasilh.tr(),
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          )),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
          child: Column(
            children: [
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: LocaleKeys.research_stores.tr(),
                  hintStyle: TextStyle(fontSize: 14),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.01),
                child: Container(
                  height: screenWidth / 1.5,
                  decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.02,
                              vertical: screenWidth * 0.1,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  LocaleKeys.hasila_company.tr(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: screenWidth * 0.01,
                                ),
                                Text(
                                  LocaleKeys.hasila_company2.tr(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: screenWidth * 0.05,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    color: AppColors.black,
                                  ),
                                  width: 150,
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    LocaleKeys.watch_now.tr(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: SvgPicture.asset('assets/img/img2.svg'))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    LocaleKeys.most_popular_stores.tr(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.01),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Stores()));
                      },
                      child: Row(
                        children: [
                          Text(LocaleKeys.more.tr(),
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 14)),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward, color: Colors.blue),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    LogoHomePage(
                      imagePath: 'assets/img/img1.svg',
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 15),
                    LogoHomePage(
                      imagePath: 'assets/img/img2.svg',
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 15),
                    LogoHomePage(
                      imagePath: 'assets/img/img3.svg',
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 15),
                    LogoHomePage(
                      imagePath: 'assets/img/img4.svg',
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    LocaleKeys.exclusive_coupons.tr(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.01),
                    child: Row(
                      children: [
                        Text(LocaleKeys.more.tr(),
                            style: TextStyle(color: Colors.blue)),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward, color: Colors.blue),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ExclusiveCouponsHomePage(),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    LocaleKeys.most_popular_categories.tr(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.01),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Categories()));
                      },
                      child: Row(
                        children: [
                          Text(LocaleKeys.more.tr(),
                              style: TextStyle(color: Colors.blue)),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward, color: Colors.blue),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CategoriesHomePage(),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    LocaleKeys.best_offers.tr(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.01),
                    child: Row(
                      children: [
                        Text(LocaleKeys.more.tr(),
                            style: TextStyle(color: Colors.blue)),
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
                    OffersHomePage(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    LocaleKeys.best_coupons.tr(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.01),
                    child: Row(
                      children: [
                        Text(LocaleKeys.more.tr(),
                            style: TextStyle(color: Colors.blue)),
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
                    CouponsPageHome(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    LocaleKeys.best_products.tr(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.01),
                    child: Row(
                      children: [
                        Text(LocaleKeys.more.tr(),
                            style: TextStyle(color: Colors.blue)),
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
                    ProductsHomePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
