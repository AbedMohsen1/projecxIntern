import 'package:ahd/models/data_model.dart';
import 'package:ahd/screens/favorites/like_unlike.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class Coupons extends StatelessWidget {
  const Coupons({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.05),
      child: ListView.builder(
        itemCount: coupons.length,
        itemBuilder: (context, index) {
          final offer = coupons[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SvgPicture.asset(
                // offer.storeLogo,

                //   'assets/img/80.svg',
                // ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          if (offer.isExclusive)
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:
                                  // SvgPicture.asset('assets/img/Tag.svg'),
                                  Text(
                                offer.discountLabel,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              LocaleKeys.exclusively.tr(),
                              style: TextStyle(
                                  fontSize: 12, color: Colors.blue.shade800),
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(Icons.check_circle_outline_outlined,
                                  size: 20),
                              SizedBox(height: 8),
                              LikeUnLike(),
                              SizedBox(height: 8),
                              Icon(Icons.share_outlined, size: 20),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        offer.title,
                        style: TextStyle(fontSize: 12, height: 1.6),
                      ),
                      SizedBox(height: 20),
                    ],
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
