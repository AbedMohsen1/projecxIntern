import 'package:ahd/models/home/categories.dart';
import 'package:ahd/providers/homeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CategoriesHomePage extends StatefulWidget {
  const CategoriesHomePage({super.key});

  @override
  State<CategoriesHomePage> createState() => _CategoriesHomePageState();
}

class _CategoriesHomePageState extends State<CategoriesHomePage> {
  late Future<List<CategoriesModel>> _categoriesFuture;

  Future<List<CategoriesModel>> _getCategories() async {
    final homeProvider = Provider.of<HomeProvider>(context, listen: false);
    return await homeProvider.getCategories();
  }

  @override
  void initState() {
    super.initState();
    _categoriesFuture = _getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CategoriesModel>>(
      future: _categoriesFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('حدث خطأ: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text("لا توجد تصنيفات حالياً"));
        }

        final categories = snapshot.data!;
        return SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];

              return Container(
                width: 120,
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SvgPicture.string(
                        category.logoPath ?? '',
                        placeholderBuilder: (_) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      category.name ?? '',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
