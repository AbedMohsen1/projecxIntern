import 'package:ahd/Theme/color_managment.dart';
import 'package:flutter/material.dart';

class TextButtonProfile extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final Icon? icons;

  const TextButtonProfile(
      {super.key, required this.onPressed, required this.title, this.icons});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            if (icons != null) ...[
              icons!,
            ],
            TextButton(
                onPressed: onPressed,
                child: Text(
                  title,
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                )),
          ],
        ),
        Divider(
          color: AppColors.border,
          thickness: 1,
        ),
      ],
    );
  }
}
