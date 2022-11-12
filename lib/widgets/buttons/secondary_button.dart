import 'package:explore_app_1/colors/app_colors.dart';
import 'package:explore_app_1/theme/theme_config.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String buttonText;
  final onPressed;
  const SecondaryButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
        child: TextButton(
          onPressed: onPressed,
          child: Container(
            height: 54,
            width: double.maxFinite,
            decoration: BoxDecoration(
                //color: AppColors.primaryColor,
                border: Border.all(
                    color: darkActive
                        ? AppColors.secondaryColor
                        : AppColors.grey100),
                borderRadius: BorderRadius.circular(4)),

            //
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(
                //   Iconsax.add,
                //   color: Colors.white,
                // ),
                // SizedBox(width: 8),
                Text(
                  buttonText,
                  style: TextStyle(
                      color: darkActive
                          ? AppColors.secondaryColor
                          : AppColors.grey100,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
