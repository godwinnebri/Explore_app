import 'package:explore_app_1/colors/app_colors.dart';
import 'package:explore_app_1/core/api_provider.dart';
import 'package:explore_app_1/screens/detail_scren.dart';
import 'package:explore_app_1/screens/language_filter.dart';
import 'package:explore_app_1/screens/region_filter.dart';
import 'package:explore_app_1/widgets/filter_container.dart';
import 'package:explore_app_1/widgets/search.dart';
import 'package:explore_app_1/widgets/texts/apptext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../theme/theme_config.dart';
import '../widgets/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    final apiProvider = Provider.of<ApiProvider>(context, listen: false);
    apiProvider.fetchCountries();
  }

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);
    var model = apiProvider.countryList;
    model.sort((a, b) => a.name!.common!.compareTo(b.name!.common!));
    return Scaffold(
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
//logo
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text('Explore',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'ElsieSwashCaps',
                                  fontWeight: FontWeight.w900)),
                          Text('.',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),

                      InkWell(
                        onTap: () {
                          currentTheme.switchTheme();
                        },
                        child: darkActive
                            ? const Icon(Iconsax.moon)
                            : const Icon(
                                Iconsax.sun_1,
                              ),
                      )
                    ],
                  ),
                  const Gap(h: 30),

                  //search
                  const SearchInput(
                    hintText: 'Search country',
                    //onChanged: searchCountries,
                  ),

                  const Gap(h: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //language filter
                      InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => LanguageFilterModal(() {
                                      setState(() {
                                        //do something
                                      });
                                      Navigator.pop(context);
                                    }));
                          },
                          child: const Filter(
                              filterText: 'EN', icon: Iconsax.global)),

                      //region filter
                      InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => RegionFilterModal(() {
                                      setState(() {
                                        //do something
                                      });
                                      Navigator.pop(context);
                                    }));
                          },
                          child: const Filter(
                              filterText: 'Filter', icon: Iconsax.filter))
                    ],
                  ),
                  const Gap(h: 12),
                ],
              ),
              Expanded(
                child: apiProvider.loading
                    ? Center(
                        child: Column(
                        children: const [
                          Gap(h: 40),
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
                              leading: SizedBox(
                                height: 50,
                                width: 50,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "${model.elementAt(index).flags?.png}",
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              title: AppText(
                                text: "${model.elementAt(index).name?.common}",
                                size: 18,
                                weight: FontWeight.w700,
                              ),
                              subtitle: AppText(
                                text: "${model.elementAt(index).capital}",
                                size: 18,
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
