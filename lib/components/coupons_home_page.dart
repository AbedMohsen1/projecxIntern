import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/models/home/best_coupons_offers.dart';
import 'package:ahd/providers/homeprovider.dart';
import 'package:ahd/screens/favorites/like_unlike.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CouponsPageHome extends StatefulWidget {
  const CouponsPageHome({super.key});

  @override
  State<CouponsPageHome> createState() => _CouponsPageHomeState();
}

class _CouponsPageHomeState extends State<CouponsPageHome> {
  late Future<List<BestCouponsOffersModel>> _bestCouponsOffersFuture;

  Future<List<BestCouponsOffersModel>> _getBestCouponsOffers() async {
    final homeProvider = Provider.of<HomeProvider>(context, listen: false);
    return await homeProvider.getBestCouponsOffers();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _bestCouponsOffersFuture = _getBestCouponsOffers();
  // }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return FutureBuilder<List<BestCouponsOffersModel>>(
      future: _bestCouponsOffersFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('حدث خطأ: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text("لا توجد عروض حالياً"));
        }

        final offers = snapshot.data!;

        return SizedBox(
          height: screenWidth / 1.2,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: offers.length,
            itemBuilder: (context, index) {
              final offer = offers[index];

              return Container(
                width: screenWidth * 0.6,
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (offer.exclusiveText != null)
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
                                offer.exclusiveText!,
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
                    const SizedBox(height: 20),
                    if (offer.logoPath != null &&
                        offer.logoPath!.endsWith('.svg'))
                      SvgPicture.network(
                        offer.logoPath!,
                        height: 40,
                        placeholderBuilder: (_) =>
                            const CircularProgressIndicator(),
                      )
                    else
                      SvgPicture.network(
                        offer.logoPath ?? '',
                        height: 40,
                        errorBuilder: (_, __, ___) => const Icon(Icons.store),
                      ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            offer.storeName ?? "",
                            style: const TextStyle(fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.blu,
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "خصم",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      offer.name ?? "",
                      style: const TextStyle(fontSize: 14),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // launchUrl(offer.url); // افعل هذا إذا كان لديك رابط
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: AppColors.blu,
                      ),
                      child: Text(
                        "تفعيل العرض",
                        style: TextStyle(color: AppColors.white),
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
