// ignore_for_file: use_build_context_synchronously, unused_local_variable, camel_case_types

import 'package:ahd/auth/signup.dart';
import 'package:ahd/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "حصيلة",
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 20),
                      ClipOval(
                        child: Image.asset(
                          "img/person.jpg",
                          height: 70,
                          width: 70,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Text(
                    "تسجيل دخول للتطبيق",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        label: Text("الايميل"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                        label: Text("كلمة المرور "),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: ElevatedButton(
                      onPressed: () async {
                        try {
                          final credential = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                email: email.text,
                                password: password.text,
                              );
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => home()),
                          );
                        } on FirebaseAuthException catch (e) {
                          print('Failed with error code: ${e.code}');
                          print(e.message);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(double.infinity, 50),
                      ),
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('ليس لديك حساب ؟'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signup()),
                          );
                        },
                        style: TextButton.styleFrom(
                          visualDensity: const VisualDensity(
                            vertical: VisualDensity.minimumDensity,
                            horizontal: VisualDensity.minimumDensity,
                          ),
                        ),
                        child: const Text(
                          'إنشاء حساب',
                          style: TextStyle(color: Colors.lightBlueAccent),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
