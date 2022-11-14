// import 'package:explore_app_1/colors/app_colors.dart';
// import 'package:explore_app_1/theme/theme_config.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';

// class SearchInput extends StatelessWidget {
//   final String hintText;
//   final TextEditingController? searchController;
//   final onChanged;
//   const SearchInput(
//       {this.onChanged, required this.hintText, Key? key, this.searchController})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // TextEditingController searchController = TextEditingController();

//     return TextField(
//       controller: searchController,
//       textAlign: TextAlign.center,
//       // style:
//       //     TextStyle(color: darkActive ? AppColors.grey100 : AppColors.grey900),
//       onChanged: (value) {
//         //Do something with value
//       },
//       decoration: InputDecoration(
//         prefixIcon: const Icon(
//           Iconsax.search_normal_1,
//           color: AppColors.grey500,
//         ),
//         filled: true,
//         fillColor: darkActive
//             ? const Color(0xff98A2B3).withOpacity(0.2)
//             : AppColors.grey100,
//         hintText: 'Search country',
//         border: InputBorder.none,
//         hintStyle: TextStyle(
//             color: darkActive ? AppColors.grey500 : AppColors.grey500,
//             fontFamily: 'Axiforma'),
//         contentPadding:
//             const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
//         enabledBorder: OutlineInputBorder(
//           borderSide:
//               BorderSide(color: Colors.white.withOpacity(0), width: 0.0),
//           borderRadius: const BorderRadius.all(Radius.circular(4.0)),
//         ),
//         focusedBorder: const OutlineInputBorder(
//           borderSide: BorderSide(color: AppColors.secondaryColor, width: 1),
//           borderRadius: BorderRadius.all(Radius.circular(4.0)),
//         ),
//       ),
//     );
//   }
// }


