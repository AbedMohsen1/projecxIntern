import 'package:ahd/models/home/silder_model.dart';
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
}
