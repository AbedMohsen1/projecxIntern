import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/models/home/best_products_model.dart';
import 'package:ahd/providers/homeprovider.dart';
import 'package:ahd/screens/favorites/like_unlike.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsHomePage extends StatefulWidget {
  const ProductsHomePage({super.key});

  @override
  State<ProductsHomePage> createState() => _ProductsHomePageState();
}

class _ProductsHomePageState extends State<ProductsHomePage> {
  late Future<List<BestProductsModel>> _bestProducts;

  Future<List<BestProductsModel>> _getBestProducts() async {
    final homeprovider = Provider.of<HomeProvider>(context, listen: false);
    return await homeprovider.getBestProducts();
  }

  @override
  void initState() {
    super.initState();
    _bestProducts = _getBestProducts();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return FutureBuilder<List<BestProductsModel>>(
      future: _bestProducts,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('حدث خطأ : ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text("لا يوجد منتجات الآن"));
        }

        final products = snapshot.data!;

        return SizedBox(
          height: screenWidth / 1.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(right: screenWidth * 0.03),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Container(
                width: screenWidth / 1.5,
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (product.exclusiveText != null &&
                        product.exclusiveText!.isNotEmpty)
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: AppColors.blu,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                product.exclusiveText!,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Spacer(),
                            const LikeUnLike(),
                            const Icon(Icons.share_outlined, size: 20),
                          ],
                        ),
                      ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.blu.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            product.exclusiveText!,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.blu,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        LikeUnLike(),
                        const Icon(Icons.share_outlined, size: 20),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Image.network(
                      product.logoPath ?? '',
                      height: 80,
                      errorBuilder: (_, __, ___) =>
                          const Icon(Icons.broken_image),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          product.storeName ?? '',
                          style: const TextStyle(fontSize: 12),
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.blu,
                            borderRadius: BorderRadius.circular(17),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Text(
                            product.couponText ?? '',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      product.name ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${product.price ?? ''} ${product.currency ?? ''}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    if (product.discountPrice != null)
                      Text(
                        '${product.discountPrice} ${product.currency ?? ''}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
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
