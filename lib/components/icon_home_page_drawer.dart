import 'package:ahd/Theme/color_managment.dart';
import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Row(children: [
          Icon(icon),
          SizedBox(
            width: 10,
          ),
          if (text != null) ...[
            const SizedBox(width: 10),
            Text(
              text!,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
          Divider()
        ]),
      ),
    );
  }
}
