import 'package:explore_app/widgets/gap.dart';
import 'package:explore_app/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                children: [
                  Container(color: Colors.red, width: 200, height: 60),
                  const Icon(Icons.light),
                ],
              ),

              const Gap(h: 24),

              SearchInput(
                  searchController: searchController,
                  hintText: "Search Country")
            ],
          ),
        ),
      ),
    );
  }
}
