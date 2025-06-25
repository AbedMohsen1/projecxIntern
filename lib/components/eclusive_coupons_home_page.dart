import 'package:ahd/models/home/exclusive_coupons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/homeprovider.dart';
import 'package:url_launcher/url_launcher.dart';

class ExclusiveCouponsHomePage extends StatefulWidget {
  const ExclusiveCouponsHomePage({super.key});

  @override
  State<ExclusiveCouponsHomePage> createState() =>
      _ExclusiveCouponsHomePageState();
}

class _ExclusiveCouponsHomePageState extends State<ExclusiveCouponsHomePage> {
  late Future<List<ExclusiveCouponsModel>> _exclusiveCouponsFuture;

  @override
  void initState() {
    getdata();
    super.initState();
  }

  void getdata() async {
    _exclusiveCouponsFuture =
        await Provider.of<HomeProvider>(context, listen: false)
            .getExclusiveCoupons();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ExclusiveCouponsModel>>(
      future: _exclusiveCouponsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('حدث خطأ: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('لا توجد كوبونات حالياً'));
        } else {
          final coupons = snapshot.data!;
          return SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coupons.length,
              itemBuilder: (context, index) {
                final coupon = coupons[index];
                return Container(
                  width: 200,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 6)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(coupon.logoPath ?? '', height: 40),
                      const SizedBox(height: 10),
                      Text(
                        coupon.name ?? '',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('كود: ${coupon.coupon ?? ''}'),
                      Text('المتجر: ${coupon.storeName ?? ''}'),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          if (coupon.link != null) {
                            launchUrl(Uri.parse(coupon.link!));
                          }
                        },
                        child: const Text('استخدم الكوبون'),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
