import 'package:ahd/components/gender_selector.dart';
import 'package:ahd/theme/color_managment.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:flutter_svg/svg.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  late TextEditingController _usernameTextController;
  late TextEditingController _emailTextController;
  late TextEditingController _phoneTextController;
  late TextEditingController _date_of_birth_TextController;

  String? _emailError;

  String? _usernameError;
  String? _phoneError;
  String? _date_of_birth_Error;

  @override
  void initState() {
    super.initState();
    _usernameTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _phoneTextController = TextEditingController();
    _date_of_birth_TextController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameTextController.dispose();
    _emailTextController.dispose();
    _phoneTextController.dispose();
    _date_of_birth_TextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.blu,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "البيانات الشخصية",
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("البيانات الشخصية"),
            // SvgPicture.asset('img/Group13641'),
            CircleAvatar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit),
                Text("تحديث الصورة"),
              ],
            ),
            Text("محمد عبدالله"),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: _usernameTextController,
                keyboardType: TextInputType.emailAddress,
                showCursor: true,
                decoration: InputDecoration(
                  hintText: 'اسم المستخدم',
                  helperStyle: const TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                  filled: false,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red.shade200),
                  ),
                  errorText: _usernameError,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
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
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red.shade200),
                  ),
                  errorText: _emailError,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: _phoneTextController,
                keyboardType: TextInputType.emailAddress,
                showCursor: true,
                decoration: InputDecoration(
                  hintText: 'رقم الجوال',
                  helperStyle: const TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                  filled: false,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red.shade200),
                  ),
                  errorText: _phoneError,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: _date_of_birth_TextController,
                keyboardType: TextInputType.emailAddress,
                showCursor: true,
                decoration: InputDecoration(
                  hintText: 'تاريخ الميلاد',
                  helperStyle: const TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                  filled: false,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red.shade200),
                  ),
                  errorText: _date_of_birth_Error,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GenderSelector(),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.backTest,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: const Size(double.infinity, 48),
                ),
                child: Text(
                  'تحديث',
                  style: TextStyle(color: HexColor("#FFFFFF")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
