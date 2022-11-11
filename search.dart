import 'package:explore_app_1/colors/app_colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController searchController;
  final String hintText;
  final onChanged;
  const SearchInput(
      {this.onChanged,
      required this.searchController,
      required this.hintText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: searchController,
        textAlign: TextAlign.center,
        onChanged: (value) {
          //Do something wi
        },
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.grey500,
          ),
          filled: true,
          fillColor: Colors.grey.shade100,
          hintText: hintText,
          hintStyle:
              const TextStyle(color: AppColors.grey500, fontFamily: 'Axiforma'),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryColor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
        ),
      ),
    );
  }
}
