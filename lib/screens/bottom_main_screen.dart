import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/screens/categories/categories.dart';
import 'package:ahd/screens/favorites/favorites.dart';
import 'package:ahd/screens/homepage/home_page.dart';
import 'package:ahd/screens/profile/profile.dart';
import 'package:ahd/screens/stores/stores.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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

  final List<IconData> _icons = [
    Icons.home_outlined,
    Icons.store_outlined,
    Icons.category_outlined,
    Icons.favorite_outline_sharp,
    Icons.person_outlined,
  ];

  @override
  void initState() {
    super.initState();
    _screens = [
      const HomePage(),
      const Stores(),
      const Categories(),
      const Favorites(),
      const Profile(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> labels = [
      LocaleKeys.home_page.tr(),
      LocaleKeys.stores.tr(),
      LocaleKeys.categories.tr(),
      LocaleKeys.favorites.tr(),
      LocaleKeys.account.tr(),
    ];
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: AppColors.blu,
        unselectedItemColor: AppColors.black,
        items: List.generate(labels.length, (index) {
          final isActive = _selectedIndex == index;
          return BottomNavigationBarItem(
            label: '',
            icon: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  _icons[index],
                  color: isActive ? AppColors.blu : AppColors.black,
                ),
                const SizedBox(height: 2),
                Text(
                  labels[index],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                    color: isActive ? AppColors.blu : AppColors.black,
                  ),
                ),
                const SizedBox(height: 4),
                if (isActive)
                  Container(
                    width: 20,
                    height: 5,
                    decoration: BoxDecoration(
                      color: AppColors.blu,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
