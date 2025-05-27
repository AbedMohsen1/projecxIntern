import 'package:ahd/theme/color_managment.dart';
import 'package:ahd/screens/auth/sign_up.dart';
import 'package:ahd/screens/homepage/bottom_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: SvgPicture.asset('img/Group8.svg'),
                ),
                SizedBox(width: 20),
                Text(
                  "حصيلة",
                  style: GoogleFonts.cairo(
                    fontSize: 30,
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Container(height: 50),
            Padding(
              padding: EdgeInsets.all(0),
              child: Text(
                "تسجيل الدخول",
                style: GoogleFonts.cairo(
                    fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            Container(height: 50),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: TextField(
                controller: _emailTextController,
                keyboardType: TextInputType.emailAddress,
                showCursor: true,
                decoration: InputDecoration(
                  hintText: 'الايميل',
                  helperStyle: const TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                  filled: false,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red.shade200),
                  ),
                  errorText: _emailError,
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: TextField(
                controller: _passwordTextController,
                minLines: 1,
                maxLines: 1,
                obscureText: _obscure,
                decoration: InputDecoration(
                  hintText: 'كلمة المرور',
                  suffixIcon: IconButton(
                    onPressed: () => setState(() => _obscure = !_obscure),
                    icon: Icon(
                      _obscure ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red.shade200),
                  ),
                  errorText: _passwordError,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    visualDensity: const VisualDensity(
                      vertical: VisualDensity.minimumDensity,
                    ),
                  ),
                  child: Text(
                    "نسيت كلمة المرور",
                    style: GoogleFonts.cairo(color: AppColors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 50, top: 40),
              child: ElevatedButton(
                onPressed: () {
                  _checkData();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: const Size(double.infinity, 45),
                ),
                child: Text(
                  'تسجيل الدخول',
                  style: GoogleFonts.cairo(color: HexColor("#FFFFFF")),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('إنشاء حساب جديد',
                    style: GoogleFonts.cairo(color: AppColors.blu)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  style: TextButton.styleFrom(
                    visualDensity: const VisualDensity(
                      vertical: VisualDensity.minimumDensity,
                      horizontal: VisualDensity.minimumDensity,
                    ),
                  ),
                  child: Text(
                    'هل لديك حساب بالفعل ؟',
                    style: GoogleFonts.cairo(color: AppColors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool _checkData() {
    setState(() {
      _emailError =
          _emailTextController.text.isEmpty ? "الرجاء ادخال الايميل" : null;
      _passwordError = _passwordTextController.text.isEmpty
          ? "الرجاء ادخال كلمة المرور"
          : null;
    });
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BottomBarScreen()));
      return true;
    }
    return false;
  }
}
