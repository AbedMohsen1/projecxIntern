import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Stores extends StatefulWidget {
  const Stores({super.key});

  @override
  State<Stores> createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  List<dynamic> stores = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    fetchStores();
  }

  Future<void> fetchStores() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final countryId = prefs.getInt('country-id') ?? 1;

      final response = await Dio().get(
        'https://mobile.hasilh.com/api/Home/GetMostPopularStores',
        options: Options(
          headers: {'country-id': countryId.toString()},
        ),
      );

      if (response.statusCode == 200 && response.data['data'] is List) {
        setState(() {
          stores = response.data['data'];
          loading = false;
        });
      } else {
        setState(() {
          stores = [];
          loading = false;
        });
      }
    } catch (e) {
      print("Error fetching stores: $e");
      setState(() {
        loading = false;
      });
    }
  }

  void navigateToStoreCoupons(Map<String, dynamic> store) {
    // هنا تضع التنقل الحقيقي إلى صفحة الكوبونات لاحقًا
    print('فتح المتجر: ${store['storeName']}');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.blu,
        centerTitle: true,
        title: Text(
          LocaleKeys.stores.tr(),
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : stores.isEmpty
              ? const Center(child: Text('لا توجد متاجر حالياً'))
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.05),
                        child: Text(
                          LocaleKeys.most_popular_stores.tr(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),

                      /// ✅ الشريط الأفقي للمتاجر الشعبية
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: stores.length,
                          itemBuilder: (context, index) {
                            final store = stores[index];
                            return InkWell(
                              onTap: () => navigateToStoreCoupons(store),
                              borderRadius: BorderRadius.circular(20),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.border),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: SvgPicture.network(
                                    store['logoPath'] ?? '',
                                    width: 60,
                                    height: 60,
                                    placeholderBuilder: (_) => const SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: CircularProgressIndicator(
                                          strokeWidth: 1.5),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.05),
                        child: Text(
                          LocaleKeys.all_stores.tr(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),

                      /// ✅ شبكة جميع المتاجر
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.05),
                        child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: stores.map((store) {
                            return InkWell(
                              onTap: () => navigateToStoreCoupons(store),
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: AppColors.border),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.network(
                                  store['logoPath'] ?? '',
                                  fit: BoxFit.contain,
                                  placeholderBuilder: (_) => const SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: CircularProgressIndicator(
                                        strokeWidth: 1),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}
