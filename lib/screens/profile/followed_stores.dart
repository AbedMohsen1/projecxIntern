import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/models/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FollowedStores extends StatelessWidget {
  const FollowedStores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.blu,
        title: Text(
          "المتاجر المتابعة",
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "المتاجر المتابعة",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: shopLogos2.map((logoPath) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  padding: EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    logoPath,
                    fit: BoxFit.contain,
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "متاجر مستحسنة لك",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: shopLogos2.map((logoPath) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  padding: EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    logoPath,
                    fit: BoxFit.contain,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
