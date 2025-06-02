import 'package:ahd/router/routers.dart';
import 'package:ahd/theme/color_managment.dart';
import 'package:ahd/screens/auth/login.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscure = true;

  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  late TextEditingController _usernameTextController;
  String? _emailError;
  String? _passwordError;
  String? _usernameError;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _usernameTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _usernameTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/img/Group8.svg'),
                  Text(
                    LocaleKeys.hasilh.tr(),
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.05),
              child: Text(
                LocaleKeys.create_new_account.tr(),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Align(
                alignment: context.locale.languageCode == 'ar'
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Text(
                  LocaleKeys.user_name.tr(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: TextField(
                controller: _usernameTextController,
                showCursor: true,
                decoration: InputDecoration(
                  hintText: LocaleKeys.user_name.tr(),
                  helperStyle: const TextStyle(
                    color: Colors.black12,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 1,
                  ),
                  filled: false,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderauth),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderauth),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.red),
                  ),
                  errorText: _usernameError,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Align(
                alignment: context.locale.languageCode == 'ar'
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Text(
                  LocaleKeys.Email.tr(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: TextField(
                controller: _emailTextController,
                keyboardType: TextInputType.emailAddress,
                showCursor: true,
                decoration: InputDecoration(
                  hintText: LocaleKeys.Email.tr(),
                  helperStyle: const TextStyle(
                    color: Colors.black12,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 1,
                  ),
                  filled: false,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderauth),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderauth),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.red),
                  ),
                  errorText: _emailError,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Align(
                alignment: context.locale.languageCode == 'ar'
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Text(
                  LocaleKeys.password.tr(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: TextField(
                controller: _passwordTextController,
                minLines: 1,
                maxLines: 1,
                obscureText: _obscure,
                decoration: InputDecoration(
                  hintText: LocaleKeys.password.tr(),
                  suffixIcon: IconButton(
                    onPressed: () => setState(() => _obscure = !_obscure),
                    icon: Icon(
                      _obscure ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderauth),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderauth),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.red),
                  ),
                  errorText: _passwordError,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: screenWidth * 0.1,
                  left: screenWidth * 0.1,
                  top: screenWidth * 0.05),
              child: ElevatedButton(
                onPressed: () {
                  _checkData();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blu,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: const Size(double.infinity, 45),
                ),
                child: Text(
                  LocaleKeys.create_an_account.tr(),
                  style: TextStyle(color: AppColors.white),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
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
          ],
        ),
      ),
    );
  }

  bool _checkData() {
    final Routers routers = Routers();
    setState(() {
      _emailError = _emailTextController.text.isEmpty
          ? LocaleKeys.please_enter_your_email_address.tr()
          : null;
      _passwordError = _passwordTextController.text.isEmpty
          ? LocaleKeys.please_enter_your_password.tr()
          : null;
      _usernameError = _usernameTextController.text.isEmpty
          ? LocaleKeys.please_enter_your_username.tr()
          : null;
    });
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty &&
        _usernameTextController.text.isNotEmpty) {
      routers.navigateToBottomBarScreen(context);
      return true;
    }
    return false;
  }
}
