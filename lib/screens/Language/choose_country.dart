import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/helpers/service_dio.dart';
import 'package:ahd/models/data_model.dart';
import 'package:ahd/screens/auth/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseCountry extends StatefulWidget {
  const ChooseCountry({super.key});

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  List<Country> countries = [];
  String? selectedCode;
  bool loading = true;
  String? error;

  @override
  void initState() {
    super.initState();
    loadCountries();
  }

  Future<void> loadCountries() async {
    try {
      final list = await fetchCountries();
      setState(() {
        countries = list;
        loading = false;
      });
    } catch (e) {
      setState(() {
        error = 'فشل تحميل البيانات';
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenWidth * 0.03),
            SvgPicture.asset('assets/img/component1.svg'),
            SizedBox(height: screenWidth * 0.03),
            Text(
              'اختر الدولة',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: screenWidth * 0.03),
            Text(
              'يرجى اختيار الدولة التي تريد، يمكنك تغييرها لاحقاً من بروفايلك',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: AppColors.dis),
            ),
            SizedBox(height: screenWidth * 0.04),
            if (loading)
              const CircularProgressIndicator()
            else if (error != null)
              Text(error!, style: const TextStyle(color: Colors.red))
            else
              Expanded(
                child: ListView.separated(
                  itemCount: countries.length,
                  separatorBuilder: (_, __) =>
                      SizedBox(height: screenWidth * 0.03),
                  itemBuilder: (context, index) {
                    final country = countries[index];
                    final isSelected = selectedCode == country.code;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCode = country.code;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.white,
                            width: 2,
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.network(
                              country.logoPath,
                              width: 30,
                              height: 24,
                              placeholderBuilder: (_) => const SizedBox(
                                width: 30,
                                height: 24,
                                child:
                                    CircularProgressIndicator(strokeWidth: 1.5),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                country.name,
                                style: TextStyle(
                                    fontSize: 15, color: AppColors.black),
                              ),
                            ),
                            if (isSelected)
                              Icon(Icons.check_circle, color: AppColors.blu)
                            else
                              const SizedBox(width: 20),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: selectedCode == null
                  ? null
                  : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
                backgroundColor: AppColors.blu,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('التالي', style: TextStyle(color: AppColors.white)),
                  const SizedBox(width: 8),
                  Icon(Icons.arrow_forward, color: AppColors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
