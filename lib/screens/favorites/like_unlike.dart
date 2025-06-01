import 'package:ahd/Theme/color_managment.dart';
import 'package:ahd/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LikeUnLike extends StatefulWidget {
  const LikeUnLike({super.key});

  @override
  State<LikeUnLike> createState() => _LikeUnLikeState();
}

class _LikeUnLikeState extends State<LikeUnLike> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLike ? Icons.favorite : Icons.favorite_border,
        color: isLike ? AppColors.red : AppColors.black,
      ),
      onPressed: () {
        setState(() {
          isLike = !isLike;

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                isLike
                    ? LocaleKeys.added_to_favorites.tr()
                    : LocaleKeys.removed_from_favorites.tr(),
              ),
              duration: Duration(seconds: 3),
            ),
          );
        });
      },
    );
  }
}
