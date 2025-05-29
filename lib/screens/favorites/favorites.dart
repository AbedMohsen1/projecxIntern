import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/components/coupons_favorites.dart';
import 'package:ahd/components/offers_favorites.dart';
import 'package:ahd/components/products_favorites.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
          centerTitle: true,
          title: Text(
            LocaleKeys.favorites.tr(),
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: LocaleKeys.offers.tr(),
              ),
              Tab(
                text: LocaleKeys.coupons.tr(),
              ),
              Tab(
                text: LocaleKeys.products.tr(),
              ),
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
