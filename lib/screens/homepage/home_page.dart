import 'package:ahd/components/coupons_home_page.dart';
import 'package:ahd/components/eclusive_coupons_home_page.dart';
import 'package:ahd/components/icon_home_page_drawer.dart';
import 'package:ahd/components/icon_home_page_drawer_social.dart';
import 'package:ahd/components/offers_home_page.dart';
import 'package:ahd/components/products_home_page.dart';
import 'package:ahd/screens/categories/categories_home_page.dart';
import 'package:ahd/components/logo_home_page.dart';
import 'package:ahd/theme/color_managment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: AppColors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: SvgPicture.asset('img/Group8.svg'),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "حصيلة",
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
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'img/world.svg',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "وقت السفر",
                          style: GoogleFonts.cairo(
                              fontSize: 24, color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                IconHomePageDrawer(
                  icon: Icons.insert_drive_file_outlined,
                  text: 'الكوبونات',
                ),
                IconHomePageDrawer(
                  icon: Icons.insert_drive_file_outlined,
                  text: 'العروض',
                ),
                IconHomePageDrawer(
                  icon: Icons.insert_drive_file_outlined,
                  text: 'المنتجات',
                ),
                IconHomePageDrawer(
                  icon: Icons.insert_drive_file_outlined,
                  text: 'الكوبونات الحصرية',
                ),
                IconHomePageDrawer(
                  icon: Icons.insert_drive_file_outlined,
                  text: 'المدونة',
                ),
                IconHomePageDrawer(
                  icon: Icons.info_outline,
                  text: 'عن حصيلة',
                ),
                IconHomePageDrawer(
                  icon: Icons.mail_outline,
                  text: 'تواصل معنا',
                ),
                IconHomePageDrawer(
                  icon: Icons.add_circle_outline,
                  text: 'أضف متجرك',
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      "نسعد بمتابعتكم لنا عبر ",
                      style: GoogleFonts.cairo(
                          fontSize: 14, fontWeight: FontWeight.w500),
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
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset('img/img15.jpg'),
            )
          ],
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'img/Group8.svg',
                width: 35,
                height: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "حصيلة",
                style: GoogleFonts.cairo(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          )),
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
                  hintStyle: TextStyle(fontSize: 14),
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
                            style: GoogleFonts.cairo(
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
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "نص وهمي",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.cairo(
                                color: AppColors.white, fontSize: 14),
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
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد",
                          style: GoogleFonts.cairo(
                              color: Colors.blue, fontSize: 14)),
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
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد",
                          style: GoogleFonts.cairo(color: Colors.blue)),
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
                  style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد",
                          style: GoogleFonts.cairo(color: Colors.blue)),
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
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد",
                          style: GoogleFonts.cairo(color: Colors.blue)),
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
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد",
                          style: GoogleFonts.cairo(color: Colors.blue)),
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
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("المزيد",
                          style: GoogleFonts.cairo(color: Colors.blue)),
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
