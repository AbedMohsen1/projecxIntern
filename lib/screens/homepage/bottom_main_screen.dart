import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/icon_home_page_drawer.dart';
import 'package:ahd/components/icon_home_page_drawer_social.dart';
import 'package:ahd/screens/categories/categories.dart';
import 'package:ahd/screens/favorites/favorites.dart';
import 'package:ahd/screens/homepage/home_page.dart';
import 'package:ahd/screens/profile/profile.dart';
import 'package:ahd/screens/stores/stores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBarScreen extends StatefulWidget {
  static const String routeName = 'bottom_bar_screen';
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;

  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      Center(child: HomePage()),
      Center(child: Stores()),
      Center(child: Categories()),
      Center(child: Favorites()),
      Center(child: Profile()),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.w600,
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
                          style:
                              TextStyle(fontSize: 24, color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            IconHomePageDrawer(
              icon: Icons.insert_drive_file,
              text: 'الكوبونات',
            ),
            IconHomePageDrawer(
              icon: Icons.insert_drive_file,
              text: 'العروض',
            ),
            IconHomePageDrawer(
              icon: Icons.insert_drive_file,
              text: 'المنتجات',
            ),
            IconHomePageDrawer(
              icon: Icons.insert_drive_file,
              text: 'الكوبونات الحصرية',
            ),
            IconHomePageDrawer(
              icon: Icons.insert_drive_file,
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
            Column(
              children: [
                Text(
                  "نسعد بمتابعتكم لنا عبر ",
                  style: TextStyle(fontSize: 16),
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
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          )),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        selectedItemColor: AppColors.blu,
        unselectedItemColor: AppColors.black,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.white,
            icon: Icon(Icons.home_outlined),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            label: "المتاجر",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: "التصنيفات",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_sharp),
            label: "المضفلة",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "البروفايل",
          ),
        ],
      ),
    );
  }
}
