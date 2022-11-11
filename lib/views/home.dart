import 'package:explore_app/colors/app_colors.dart';
import 'package:explore_app/utils/card_builder.dart';
import 'package:explore_app/widgets/gap.dart';
import 'package:explore_app/widgets/search.dart';
import 'package:explore_app/widgets/texts/apptext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              //logo and theme
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppText(
                    text: "Explore",
                    size: 28,
                    weight: FontWeight.bold,
                  ),
                  Icon(Iconsax.sun_1),
                ],
              ),

              const Gap(h: 24),

              SearchInput(
                  searchController: searchController,
                  hintText: "Search Country"),

              Gap(h: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    // height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey25, width: 1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Iconsax.global),
                        Gap(w: 10),
                        AppText(
                          text: "EN",
                        )
                      ],
                    ),
                  ),

                  //filter
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    // height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey25, width: 1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Iconsax.filter),
                        Gap(w: 10),
                        AppText(
                          text: "Filter",
                        )
                      ],
                    ),
                  ),
                ],
              ),

              Gap(h: 8),

              //list
              CountryBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
