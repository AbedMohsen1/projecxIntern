import 'package:ahd/screens/auth/login.dart';
import 'package:ahd/screens/profile/about_in_app.dart';
import 'package:ahd/screens/profile/bordercontainer.dart';
import 'package:ahd/screens/profile/languagebutton.dart';
import 'package:ahd/screens/profile/privacy_policy.dart';
import 'package:ahd/screens/profile/terms_and_conditions.dart';
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
          LocaleKeys.account.tr(),
          style: TextStyle(color: AppColors.white),
        ),
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          LocaleKeys.already_have_an_account.tr(),
                          style: TextStyle(color: AppColors.black),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          style: TextButton.styleFrom(
                            visualDensity: const VisualDensity(
                              vertical: VisualDensity.minimumDensity,
                              horizontal: VisualDensity.minimumDensity,
                            ),
                          ),
                          child: Text(LocaleKeys.log_in.tr(),
                              style: TextStyle(color: AppColors.blu)),
                        ),
                      ],
                    ),
                    BorderContainer(
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.015),
                        child: Row(
                          children: [
                            TextButtonProfile(
                                onPressed: () {},
                                title: LocaleKeys.language.tr(),
                                icons: Icon(Icons.language)),
                            Spacer(),
                            LanguageButton(
                              text: 'English',
                              isSelected: context.locale.languageCode == 'en',
                              onPressed: () {
                                context.setLocale(Locale('en'));
                              },
                            ),
                            LanguageButton(
                              text: 'العربية',
                              isSelected: context.locale.languageCode == 'ar',
                              onPressed: () {
                                context.setLocale(Locale('ar'));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    BorderContainer(
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Row(
                          children: [
                            TextButtonProfile(
                                onPressed: () {},
                                title: LocaleKeys.the_state.tr(),
                                icons: Icon(Icons.location_on_outlined)),
                            Spacer(),
                            Icon(Icons.star_rate)
                          ],
                        ),
                      ),
                    ),
                    BorderContainer(
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Row(
                          children: [
                            TextButtonProfile(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AboutInApp()));
                                },
                                title: LocaleKeys.about_the_outcome.tr(),
                                icons: Icon(Icons.info_outline)),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    BorderContainer(
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Row(
                          children: [
                            TextButtonProfile(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PrivacyPolicy()));
                                },
                                title: LocaleKeys.privacy_policy.tr(),
                                icons: Icon(Icons.lock_outline)),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    BorderContainer(
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Row(
                          children: [
                            TextButtonProfile(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TermsAndConditions()));
                                },
                                title: LocaleKeys.terms_and_conditions.tr(),
                                icons: Icon(Icons.article_outlined)),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    BorderContainer(
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Row(
                          children: [
                            TextButtonProfile(
                                onPressed: () {},
                                title:
                                    LocaleKeys.frequently_asked_questions.tr(),
                                icons: Icon(Icons.help_outline)),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    BorderContainer(
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Row(
                          children: [
                            TextButtonProfile(
                                onPressed: () {},
                                title: LocaleKeys.contact_us.tr(),
                                icons: Icon(Icons.mail_outline)),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    BorderContainer(
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Row(
                          children: [
                            TextButtonProfile(
                                onPressed: () {},
                                title: LocaleKeys.add_your_store.tr(),
                                icons: Icon(Icons.add_circle_outline)),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
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
