import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/helpers/service_dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesHomePage extends StatefulWidget {
  const CategoriesHomePage({super.key});

  @override
  State<CategoriesHomePage> createState() => _CategoriesHomePageState();
}

class _CategoriesHomePageState extends State<CategoriesHomePage> {
  List<dynamic> categories = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    fetchCategoriesService();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (categories.isEmpty) {
      return const Center(child: Text("لا توجد تصنيفات حالياً"));
    }

    return SizedBox(
      height: 70, // هذا يحافظ على ارتفاع العرض الأفقي
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(screenWidth * 0.04),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SvgPicture.network(
                  category['logoPath'] ?? '',
                  width: 24,
                  height: 24,
                  placeholderBuilder: (_) => const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 1.5),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  category['name'] ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
