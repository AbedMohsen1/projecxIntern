import 'package:ahd/screens/favorites/favorites.dart';
import 'package:ahd/screens/profile/about_in_app.dart';
import 'package:ahd/screens/profile/followed_stores.dart';
import 'package:ahd/screens/profile/info.dart';
import 'package:ahd/screens/profile/privacy_policy.dart';
import 'package:ahd/screens/profile/subscription_record.dart';
import 'package:ahd/screens/profile/terms_and_conditions.dart';
import 'package:ahd/screens/profile/terms_of_use.dart';
import 'package:ahd/screens/profile/text_button.dart';
import 'package:ahd/theme/color_managment.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blu,
        centerTitle: true,
        title: Text(
          "البروفايل",
          style: TextStyle(color: AppColors.white),
        ),
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.07),
                child: Column(
                  children: [
                    CircleAvatar(),

                    // SvgPicture.asset('assets/img/Group13641'),
                    // Image.asset('assets/img/Group13641.png'),
                    Text(
                      "محمد عبدالله",
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButtonProfile(
                        onPressed: () {},
                        title: 'أضف اعلانك',
                        icons: Icon(Icons.add_circle_outline)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Info()));
                        },
                        title: 'البيانات الشخصية',
                        icons: Icon(Icons.person_outline)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Favorites()));
                        },
                        title: 'المفضلة',
                        icons: Icon(Icons.favorite_border)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FollowedStores()));
                        },
                        title: 'المتاجر المتابعة',
                        icons: Icon(Icons.storefront_sharp)),
                    Row(
                      children: [
                        TextButtonProfile(
                            onPressed: () {},
                            title: 'اللغة',
                            icons: Icon(Icons.language)),
                        Spacer(),
                        TextButtonProfile(
                          onPressed: () {},
                          title: 'العربية',
                        ),
                        TextButtonProfile(
                          onPressed: () {},
                          title: 'English',
                        ),
                      ],
                    ),
                    TextButtonProfile(
                        onPressed: () {},
                        title: 'الدولة',
                        icons: Icon(Icons.location_on_outlined)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubscriptionRecord()));
                        },
                        title: 'سجل الاشتراكات',
                        icons: Icon(Icons.access_time)),
                    TextButtonProfile(
                        onPressed: () {},
                        title: 'الاعدادات',
                        icons: Icon(Icons.settings)),
                    SizedBox(
                      height: 50,
                    ),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutInApp()));
                        },
                        title: 'عن حصيلة',
                        icons: Icon(Icons.info_outline)),
                    TextButtonProfile(
                        onPressed: () {},
                        title: 'تواصل معنا',
                        icons: Icon(Icons.mail_outline)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicy()));
                        },
                        title: 'سياسة الخصوصية',
                        icons: Icon(Icons.lock_outline)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsOfUse()));
                        },
                        title: 'سياسة الاستخدام',
                        icons: Icon(Icons.rule)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsAndConditions()));
                        },
                        title: 'الشروط والاحكام',
                        icons: Icon(Icons.article_outlined)),
                    TextButtonProfile(
                        onPressed: () {},
                        title: 'الأسئلة الشائعة',
                        icons: Icon(Icons.help_outline)),
                    SizedBox(
                      height: 50,
                    ),
                    TextButtonProfile(
                        textColor: Colors.red,
                        onPressed: () {},
                        title: 'تسجيل الخروج',
                        icons: Icon(
                          Icons.logout,
                          color: Colors.red,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
