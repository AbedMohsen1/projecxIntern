import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/coupons_favorites.dart';
import 'package:ahd/components/offers_favorites.dart';
import 'package:ahd/components/products_favorites.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.blu,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_forward_ios),
          ),
          centerTitle: true,
          title: Text(
            "المفضلة",
            style: GoogleFonts.cairo(
              color: AppColors.white,
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "العروض"),
              Tab(text: "الكوبونات"),
              Tab(text: "المنتجات"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Offers(),
            Coupons(),
            Products(),
          ],
        ),
      ),
    );
  }
}
