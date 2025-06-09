import 'package:ahd/Widget/label_auth_text';
import 'package:ahd/Widget/text_field_auth.dart';
import 'package:ahd/screens/bottom_main_screen.dart';
import 'package:ahd/theme/color_managment.dart';
import 'package:ahd/screens/auth/sign_up.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:ahd/providers/authprovider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscure = true;

  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  String? _emailError;
  String? _passwordError;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  bool _checkData() {
    setState(() {
      _emailError = _emailTextController.text.isEmpty
          ? LocaleKeys.please_enter_your_email_address.tr()
          : null;
      _passwordError = _passwordTextController.text.isEmpty
          ? LocaleKeys.please_enter_your_password.tr()
          : null;
    });
    return _emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
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
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.05),
              child: Text(
                LocaleKeys.log_in.tr(),
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            LabelAuthText(
              text: LocaleKeys.Email.tr(),
            ),
            SizedBox(
              height: 5,
            ),
            TextFieldAuth(
              controller: _emailTextController,
              hint: LocaleKeys.Email.tr(),
              errorText: _emailError,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            LabelAuthText(
              text: LocaleKeys.password.tr(),
            ),
            SizedBox(
              height: 5,
            ),
            TextFieldAuth(
              controller: _passwordTextController,
              hint: LocaleKeys.password.tr(),
              errorText: _passwordError,
              obscureText: _obscure,
              suffixIcon: IconButton(
                onPressed: () => setState(() => _obscure = !_obscure),
                icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off),
              ),
            ),
            const SizedBox(height: 20),
            Selector<AuthProvider, bool>(
              selector: (_, provider) => provider.isLoading,
              builder: (context, isLoading, _) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                      vertical: screenWidth * 0.02),
                  child: ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            if (_checkData()) {
                              context.read<AuthProvider>().login(
                                    _emailTextController.text,
                                    _passwordTextController.text,
                                  );
                            }
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blu,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(double.infinity, 45),
                    ),
                    child: isLoading
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2,
                            ),
                          )
                        : Text(
                            LocaleKeys.log_in.tr(),
                            style: TextStyle(color: AppColors.white),
                          ),
                  ),
                );
              },
            ),
            Selector<AuthProvider, String?>(
              selector: (_, provider) => provider.loginMessage,
              builder: (context, message, _) {
                if (message == null) return const SizedBox.shrink();
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    message.tr(),
                    style: TextStyle(
                      color:
                          message.contains("نجاح") ? Colors.green : Colors.red,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: screenWidth * 0.1,
                  left: screenWidth * 0.1,
                  top: screenWidth * 0.05),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomBarScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: AppColors.blu),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: const Size(double.infinity, 45),
                ),
                child: Text(
                  LocaleKeys.follow_as_a_guest.tr(),
                  style: TextStyle(color: AppColors.blu),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.you_do_not_have_an_account.tr(),
                  style: TextStyle(color: AppColors.black),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                  child: Text(
                    LocaleKeys.create_new_account.tr(),
                    style: TextStyle(color: AppColors.blu),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
