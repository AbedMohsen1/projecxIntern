import 'package:ahd/Widget/label_auth_text.dart';
import 'package:ahd/Widget/text_field_auth.dart';
import 'package:ahd/providers/authprovider.dart';
import 'package:ahd/theme/color_managment.dart';
import 'package:ahd/screens/auth/login.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscure = true;

  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  late TextEditingController _fullNameTextController;
  String? _emailError;
  String? _passwordError;
  String? _fullNameError;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _fullNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _fullNameTextController.dispose();
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
      _fullNameError = _fullNameTextController.text.isEmpty
          ? LocaleKeys.please_enter_your_username.tr()
          : null;
    });
    return _emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty &&
        _fullNameTextController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.white,
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
            LabelAuthText(text: LocaleKeys.user_name.tr()),
            SizedBox(height: 5),
            TextFieldAuth(
              controller: _fullNameTextController,
              hint: LocaleKeys.user_name.tr(),
              errorText: _fullNameError,
            ),
            const SizedBox(height: 20),
            LabelAuthText(text: LocaleKeys.Email.tr()),
            SizedBox(height: 5),
            TextFieldAuth(
              controller: _emailTextController,
              hint: LocaleKeys.Email.tr(),
              errorText: _emailError,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            LabelAuthText(text: LocaleKeys.password.tr()),
            SizedBox(height: 5),
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
                    vertical: screenWidth * 0.03,
                  ),
                  child: ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            if (_checkData()) {
                              context.read<AuthProvider>().register(
                                  _fullNameTextController.text,
                                  _emailTextController.text,
                                  _passwordTextController.text);
                            }
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blu,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      minimumSize: const Size(double.infinity, 45),
                    ),
                    child: isLoading
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              color: AppColors.white,
                              strokeWidth: 2,
                            ),
                          )
                        : Text(
                            LocaleKeys.create_an_account.tr(),
                            style: TextStyle(color: AppColors.white),
                          ),
                  ),
                );
              },
            ),
            Selector<AuthProvider, String?>(
              selector: (_, provider) => provider.loginMessage,
              builder: (context, message, _) {
                if (message == null) return SizedBox.shrink();
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
            const SizedBox(height: 5),
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
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  style: TextButton.styleFrom(
                    visualDensity: const VisualDensity(
                      vertical: VisualDensity.minimumDensity,
                      horizontal: VisualDensity.minimumDensity,
                    ),
                  ),
                  child: Text(
                    LocaleKeys.log_in.tr(),
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
