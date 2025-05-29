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
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
          LocaleKeys.profile.tr(),
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
                      LocaleKeys.mohammed_abdullah.tr(),
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButtonProfile(
                        onPressed: () {},
                        title: LocaleKeys.add_your_store.tr(),
                        icons: Icon(Icons.add_circle_outline)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Info()));
                        },
                        title: LocaleKeys.personal_data.tr(),
                        icons: Icon(Icons.person_outline)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Favorites()));
                        },
                        title: LocaleKeys.favorites.tr(),
                        icons: Icon(Icons.favorite_border)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FollowedStores()));
                        },
                        title: LocaleKeys.followed_stores.tr(),
                        icons: Icon(Icons.storefront_sharp)),
                    Row(
                      children: [
                        TextButtonProfile(
                            onPressed: () {},
                            title: LocaleKeys.language.tr(),
                            icons: Icon(Icons.language)),
                        Spacer(),
                        TextButtonProfile(
                            onPressed: () {
                              context.setLocale(Locale('ar'));
                            },
                            title: "العربية"),
                        TextButtonProfile(
                            onPressed: () {
                              context.setLocale(Locale('en'));
                            },
                            title: "English"),
                      ],
                    ),
                    TextButtonProfile(
                        onPressed: () {},
                        title: LocaleKeys.the_state.tr(),
                        icons: Icon(Icons.location_on_outlined)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubscriptionRecord()));
                        },
                        title: LocaleKeys.subscription_record.tr(),
                        icons: Icon(Icons.access_time)),
                    TextButtonProfile(
                        onPressed: () {},
                        title: LocaleKeys.settings.tr(),
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
                        title: LocaleKeys.about_the_outcome.tr(),
                        icons: Icon(Icons.info_outline)),
                    TextButtonProfile(
                        onPressed: () {},
                        title: LocaleKeys.contact_us.tr(),
                        icons: Icon(Icons.mail_outline)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicy()));
                        },
                        title: LocaleKeys.privacy_policy.tr(),
                        icons: Icon(Icons.lock_outline)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsOfUse()));
                        },
                        title: LocaleKeys.terms_of_Use.tr(),
                        icons: Icon(Icons.rule)),
                    TextButtonProfile(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsAndConditions()));
                        },
                        title: LocaleKeys.terms_and_conditions.tr(),
                        icons: Icon(Icons.article_outlined)),
                    TextButtonProfile(
                        onPressed: () {},
                        title: LocaleKeys.frequently_asked_questions.tr(),
                        icons: Icon(Icons.help_outline)),
                    SizedBox(
                      height: 50,
                    ),
                    TextButtonProfile(
                        textColor: Colors.red,
                        onPressed: () {},
                        title: LocaleKeys.log_out.tr(),
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
