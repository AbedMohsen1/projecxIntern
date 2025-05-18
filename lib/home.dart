// ignore_for_file: camel_case_types

import 'package:ahd/Widget/Categories.dart';
import 'package:ahd/Widget/Favorites.dart';
import 'package:ahd/Widget/Profile.dart';
import 'package:ahd/Widget/homepage.dart';
import 'package:ahd/Widget/stores.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ClipOval(
              child: Image.asset(
                'img/img6.png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          "حصيلة",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
