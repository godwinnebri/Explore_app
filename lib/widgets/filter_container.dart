import 'package:explore_app_1/widgets/texts/apptext.dart';
import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import 'gap.dart';

class Filter extends StatelessWidget {
  final IconData icon;
  final String filterText;
  const Filter({required this.filterText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      // height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey25, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const Gap(w: 10),
          AppText(
            text: filterText,
          )
        ],
      ),
    );
  }
}
