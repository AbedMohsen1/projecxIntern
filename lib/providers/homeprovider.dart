import 'package:ahd/helpers/base_dio_app.dart';
import 'package:ahd/models/home/exclusive_coupons.dart';
import 'package:ahd/models/home/silder_model.dart';
import 'package:ahd/services/api/home/get_exclusivecoupons_api.dart';
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

  Future getExclusiveCoupons() async {
    exclusiveCouponsList.clear();
    try {
      final response = await GetExclusiveCoupons().fetch();
      for (var type in response['data']) {
        exclusiveCouponsList.add(ExclusiveCouponsModel.fromJson(type));
      }
      print("abd ------ $exclusiveCouponsList ${exclusiveCouponsList.length}");
      setExclusiveCouponsList(exclusiveCouponsList);
      return true;
    } on Failure catch (f) {
      return f;
    }
  }
}
