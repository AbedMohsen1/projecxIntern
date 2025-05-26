import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/screens/categories/categories.dart';
import 'package:ahd/screens/favorites/favorites.dart';
import 'package:ahd/screens/homepage/home_page.dart';
import 'package:ahd/screens/profile/profile.dart';
import 'package:ahd/screens/stores/stores.dart';
import 'package:flutter/material.dart';

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
