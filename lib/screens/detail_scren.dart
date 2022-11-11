import 'package:card_swiper/card_swiper.dart';
import 'package:explore_app_1/widgets/texts/apptext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../core/api_provider.dart';
import '../widgets/gap.dart';

class DetailScreen extends StatefulWidget {
  var index;
  DetailScreen(var this.index, {super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);
    var model = apiProvider.countryList[widget.index];
    List<String> imageList = [
      "${model.flags?.png}",
      "${model.coatOfArms?.png}",
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Iconsax.arrow_left,
                      //color: KPrimaryColor,
                      size: 30,
                    ),
                  ),
                  AppText(
                    text: '${model.name?.common}',
                    size: 20,
                    weight: FontWeight.bold,
                  ),
                  const Gap(
                    w: 30,
                  )
                ],
              ),
              const Gap(h: 20),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Swiper(
                        itemCount: imageList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              imageList[index],
                              fit: BoxFit.fill,
                            ),
                          );
                        },
                        pagination: const SwiperPagination(),
                        control: const SwiperControl(),
                      ),
                    ),
                    const Gap(h: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText(
                            text: 'Population: ',
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                          DetailText(
                            text: '${model.population}',
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText(
                            text: 'Region: ',
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                          DetailText(
                            text: '${model.region}',
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText(
                            text: 'Capital: ',
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                          DetailText(
                            text: '${model.capital}',
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    const Gap(h: 15),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText(
                            text: 'Official language: ',
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                          DetailText(
                            text: '${model.languages?.eng}',
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText(
                            text: 'Area: ',
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                          DetailText(
                            text: '${model.area}',
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText(
                            text: 'Currency: ',
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                          DetailText(
                            text: '${model.currencies} ',
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    const Gap(h: 15),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText(
                            text: 'Time zone: ',
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                          DetailText(
                            text: '${model.timezones}',
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText(
                            text: 'Dialing code: ',
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                          DetailText(
                            text: '${model.idd?.root}',
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText(
                            text: 'Driving side: ',
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                          DetailText(
                            text: '${model.car?.side}',
                            size: 16,
                            weight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
