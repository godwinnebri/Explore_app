import 'package:explore_app_1/constants.dart';
import 'package:explore_app_1/core/api_provider.dart';
import 'package:explore_app_1/screens/detail_scren.dart';
import 'package:explore_app_1/widgets/filter_container.dart';
import 'package:explore_app_1/widgets/search.dart';
import 'package:explore_app_1/widgets/texts/apptext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import 'gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final apiProvider = Provider.of<ApiProvider>(context, listen: false);
    apiProvider.fetchCountries();
  }

  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);
    var model = apiProvider.countryList;
    model.sort((a, b) => a.name!.common!.compareTo(b.name!.common!));
    return Scaffold(
      backgroundColor: KSecondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: 'Explore',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'ElsieSwashCaps',
                                color: KPrimaryColor,
                                fontWeight: FontWeight.w900)),
                        TextSpan(
                            text: '.',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffFF6C00),
                                fontWeight: FontWeight.w900))
                      ])),
                      const Icon(
                        Icons.light_mode_outlined,
                        color: KPrimaryColor,
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  SearchInput(
                      searchController: searchController,
                      hintText: "Search country"),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //language
                      Filter(filterText: 'EN', icon: Iconsax.global),

                      //filter
                      Filter(filterText: 'Filter', icon: Iconsax.filter)
                    ],
                  ),
                ],
              ),
              Expanded(
                child: apiProvider.loading
                    ? Center(
                        child: Column(
                        children: const [
                          CircularProgressIndicator(),
                          Gap(h: 14),
                          AppText(
                            text: 'Fetching countries, please wait...',
                            size: 16,
                            weight: FontWeight.bold,
                          )
                        ],
                      ))
                    : ListView.builder(
                        // shrinkWrap: true,
                        itemCount: model.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => DetailScreen(index),
                                ),
                              );
                            },
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "${model.elementAt(index).flags?.png}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              title: Text(
                                "${model.elementAt(index).name?.common}",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: KPrimaryColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              subtitle: Text(
                                "${model.elementAt(index).capital}",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: KPrimaryColor,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          );
                        }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
