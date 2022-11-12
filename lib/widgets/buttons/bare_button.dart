import 'package:explore_app_1/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BareButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const BareButton({required this.text, this.icon = Iconsax.add});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () {
        //do something when clicked
      },
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.primaryColor,
          ),
          Text(
            text,
            style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
