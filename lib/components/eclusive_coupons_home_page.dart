import 'package:ahd/models/home/exclusive_coupons.dart';
import 'package:ahd/providers/homeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ExclusiveCouponsHomePage extends StatefulWidget {
  const ExclusiveCouponsHomePage({super.key});

  @override
  State<ExclusiveCouponsHomePage> createState() =>
      _ExclusiveCouponsHomePageState();
}

class _ExclusiveCouponsHomePageState extends State<ExclusiveCouponsHomePage> {
  late Future<List<ExclusiveCouponsModel>> _exclusiveCouponsFuture;
  int? copiedIndex;

  Future<List<ExclusiveCouponsModel>> _getExclusiveCoupons() async {
    final homeProvider = Provider.of<HomeProvider>(context, listen: false);
    return await homeProvider.getExclusiveCoupons();
  }

  @override
  void initState() {
    super.initState();
    _exclusiveCouponsFuture = _getExclusiveCoupons();
  }

  void _copyCode(String? code, int index) {
    if (code == null) return;
    Clipboard.setData(ClipboardData(text: code));
    setState(() => copiedIndex = index);
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) setState(() => copiedIndex = null);
    });
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
        }

        final coupons = snapshot.data!;
        return SizedBox(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: coupons.length,
            itemBuilder: (context, index) {
              final coupon = coupons[index];
              return Container(
                width: 160,
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () => _copyCode(coupon.coupon, index),
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 12),
                      if (coupon.logoPath != null)
                        SvgPicture.network(
                          coupon.logoPath!,
                          height: 40,
                          placeholderBuilder: (context) =>
                              const CircularProgressIndicator(),
                        )
                      else
                        const Icon(Icons.store, size: 40, color: Colors.grey),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border:
                              Border.all(color: Colors.grey.shade300, width: 1),
                          color: Colors.grey.shade100,
                        ),
                        child: Text(
                          coupon.coupon ?? '',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      if (copiedIndex == index)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'تم النسخ الكود',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      const SizedBox(height: 12),
                      Text(
                        'خصم ${coupon.name ?? ""}',
                        style: const TextStyle(fontSize: 13),
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
