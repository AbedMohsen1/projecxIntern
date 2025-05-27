import 'package:ahd/Theme/color_managment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconHomePageDrawer extends StatelessWidget {
  final IconData icon;
  final String? text;
  const IconHomePageDrawer({
    super.key,
    required this.icon,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(children: [
            Icon(icon),
            SizedBox(
              width: 10,
            ),
            if (text != null) ...[
              const SizedBox(width: 10),
              Text(
                text!,
                style: GoogleFonts.cairo(
                  color: AppColors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ]),
        ),
        Divider(
          color: AppColors.border,
          thickness: 1,
        ),
      ],
    );
  }
}
