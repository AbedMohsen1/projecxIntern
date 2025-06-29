// ignore_for_file: avoid_print

import 'package:ahd/Theme/failure.dart';
import 'package:ahd/models/home/best_coupons_offers.dart';
import 'package:ahd/models/home/best_products_model.dart';
import 'package:ahd/models/home/categories.dart';
import 'package:ahd/models/home/exclusive_coupons.dart';
import 'package:ahd/models/home/most_popular_stores.dart';
import 'package:ahd/models/home/silder_model.dart';
import 'package:ahd/services/api/home/get_best_coupons_offers.dart';
import 'package:ahd/services/api/home/get_categories.dart';
import 'package:ahd/services/api/home/get_exclusivecoupons_api.dart';
import 'package:ahd/services/api/home/get_most_popular_stores.dart';
import 'package:ahd/services/api/home/get_products.dart';
import 'package:flutter/foundation.dart';

class HomeProvider with ChangeNotifier {
  List<SliderModel> sliderList = [];
  setSliderList(List<SliderModel> value) {
    sliderList = value;
    notifyListeners();
  }

  // Future getSliders() async {
  //   sliderList.clear();
  //   try {
  //     final response = await GetSliderApi().fetch();
  //     for (var type in response['data']) {
  //       sliderList.add(SliderModel.fromJson(type));
  //     }
  //     print(" $sliderList ${sliderList.length}");
  //     setSliderList(sliderList);
  //     return true;
  //   } on Failure catch (f) {
  //     return f;
  //   }
  // }
  List<ExclusiveCouponsModel> exclusiveCouponsList = [];
  setExclusiveCouponsList(List<ExclusiveCouponsModel> value) {
    exclusiveCouponsList = value;
    notifyListeners();
  }

  Future<List<ExclusiveCouponsModel>> getExclusiveCoupons() async {
    exclusiveCouponsList.clear();
    try {
      final response = await GetExclusiveCoupons().fetch();
      for (var type in response['data']) {
        exclusiveCouponsList.add(ExclusiveCouponsModel.fromJson(type));
      }
      print("$exclusiveCouponsList ${exclusiveCouponsList.length}");
      setExclusiveCouponsList(exclusiveCouponsList);
      return exclusiveCouponsList;
    } on Failure catch (f) {
      return [];
    }
  }

  List<MostPopularStoresModel> mostPopularStoresList = [];
  setMostPopularStoresList(List<MostPopularStoresModel> value) {
    mostPopularStoresList = value;
    notifyListeners();
  }

  Future getMostPopularStores() async {
    mostPopularStoresList.clear();
    try {
      final response = await GetMostPopularStores().fetch();
      for (var type in response['data']['stores']) {
        mostPopularStoresList.add(MostPopularStoresModel.fromJson(type));
      }
      print("storesss $mostPopularStoresList ${mostPopularStoresList.length}");
      setMostPopularStoresList(mostPopularStoresList);
      return true;
    } on Failure catch (f) {
      return f;
    }
  }

  List<CategoriesModel> categoriesModelList = [];
  setcategoriesModelList(List<CategoriesModel> value) {
    categoriesModelList = value;
    notifyListeners();
  }

  Future<List<CategoriesModel>> getCategories() async {
    categoriesModelList.clear();
    try {
      final response = await GetCategories().fetch();
      for (var type in response['data']) {
        categoriesModelList.add(CategoriesModel.fromJson(type));
      }
      print("$categoriesModelList ${categoriesModelList.length}");
      setcategoriesModelList(categoriesModelList);
      return categoriesModelList;
    } on Failure catch (f) {
      return [];
    }
  }

  List<BestCouponsOffersModel> bestCouponsOffersModelList = [];
  setbestCouponsOffersModelList(List<BestCouponsOffersModel> value) {
    bestCouponsOffersModelList = value;
    notifyListeners();
  }

  Future getBestCouponsOffers() async {
    bestCouponsOffersModelList.clear();
    try {
      final response = await GetBestCouponsOffers().fetch();
      for (var type in response['data']) {
        bestCouponsOffersModelList.add(BestCouponsOffersModel.fromJson(type));
      }
      setbestCouponsOffersModelList(bestCouponsOffersModelList);
      return bestCouponsOffersModelList;
    } on Failure catch (f) {
      return f;
    }
  }

  List<BestProductsModel> bestProductsModelList = [];
  setBestProductsModelList(List<BestProductsModel> value) {
    bestProductsModelList = value;
    notifyListeners();
  }

  Future<List<BestProductsModel>> getBestProducts() async {
    bestProductsModelList.clear();
    try {
      final response = await GetProducts().fetch();
      for (var type in response['data']) {
        bestProductsModelList.add(BestProductsModel.fromJson(type));
      }
      setBestProductsModelList(bestProductsModelList);
      return bestProductsModelList;
    } on Failure catch (f) {
      return [];
    }
  }
}
