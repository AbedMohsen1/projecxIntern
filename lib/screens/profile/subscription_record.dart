import 'package:ahd/models/data_model.dart';
import 'package:ahd/theme/color_managment.dart';
import 'package:flutter/material.dart';

class SubscriptionRecord extends StatelessWidget {
  const SubscriptionRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blu,
        leading: Icon(Icons.arrow_forward), // سهم الرجوع
        title: Text(
          'سجل الاشتراكات',
          style: TextStyle(color: AppColors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "سجل جميع الاشتراكات",
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "العضوية",
                          style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "تاريخ الاشتراك",
                          style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: subscriptionrecord.length,
                itemBuilder: (context, index) {
                  final item = subscriptionrecord[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: AppColors.border),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                item['name']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(item['date']!),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
