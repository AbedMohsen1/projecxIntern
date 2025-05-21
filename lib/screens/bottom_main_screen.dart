// ignore_for_file: camel_case_types

import 'package:ahd/widget/Categories.dart';
import 'package:ahd/widget/Favorites.dart';
import 'package:ahd/widget/Profile.dart';
import 'package:ahd/widget/homepage.dart';
import 'package:ahd/widget/stores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarScreen extends StatefulWidget {
  static const String routeName = 'bottom_bar_screen';
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Center(child: homepage()),
    Center(child: stores()),
    Center(child: Categories()),
    Center(child: Favorites()),
    Center(child: Profile()),
  ];

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
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey),
              child: Align(alignment: Alignment.topCenter),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.redAccent,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [SvgPicture.asset('img/img5.svg')],
        centerTitle: true,
        title: Text(
          "حصيلة",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
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
