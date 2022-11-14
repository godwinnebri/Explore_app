import 'package:accordion/accordion.dart';
import 'package:explore_app_1/colors/app_colors.dart';
import 'package:explore_app_1/theme/theme_config.dart';
import 'package:explore_app_1/widgets/buttons/primary_buttton.dart';
import 'package:explore_app_1/widgets/buttons/secondary_button.dart';
import 'package:explore_app_1/widgets/gap.dart';
import 'package:explore_app_1/widgets/texts/apptext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../core/api_provider.dart';

class RegionFilterModal extends StatefulWidget {
  const RegionFilterModal(this.regionFilterCallback, {Key? key})
      : super(key: key);
  final Function regionFilterCallback;

  @override
  State<RegionFilterModal> createState() => _RegionFilterModalState();
}

class _RegionFilterModalState extends State<RegionFilterModal> {
  bool onSelectRegion = false;

  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);
    var model = apiProvider.countryList;

    return Container(
      color: !darkActive ? const Color(0xff161616) : const Color(0xff727375),
      child: Container(
          decoration: BoxDecoration(
            color: darkActive ? Colors.white : const Color(0xff000F24),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          ),

          //

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(h: 20),
                const AppText(
                  text: "Filter",
                  size: 20,
                  weight: FontWeight.bold,
                  // color: AppColors.grey900,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: apiProvider.loading
                        ? Center(
                            child: Column(
                            children: [
                              const Gap(h: 40),
                              const CircularProgressIndicator(),
                              const Gap(h: 14),
                              Column(
                                children: const [
                                  AppText(
                                    text: 'please wait...',
                                    size: 16,
                                    weight: FontWeight.bold,
                                  ),
                                  Gap(h: 10),
                                  AppText(
                                    text: 'Check your connection',
                                    size: 14,
                                    weight: FontWeight.normal,
                                    color: AppColors.grey500,
                                  ),
                                ],
                              ),
                            ],
                          ))
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Accordion(
                                  contentBackgroundColor:
                                      darkActive ? Colors.white : AppColors.bg,
                                  contentBorderWidth: 0.0,
                                  contentBorderColor:
                                      AppColors.grey100.withOpacity(0.0),
                                  headerBackgroundColor:
                                      darkActive ? Colors.white : AppColors.bg,
                                  rightIcon: const Icon(Iconsax.arrow_down_1),
                                  paddingListHorizontal: 0.0,
                                  headerPadding: const EdgeInsets.symmetric(
                                    vertical: 0,
                                    horizontal: 0,
                                  ),
                                  paddingBetweenClosedSections: 0.0,
                                  paddingBetweenOpenSections: 0.0,
                                  contentVerticalPadding: 0.0,
                                  paddingListBottom: 0.0,
                                  paddingListTop: 12.0,
                                  children: [
                                    AccordionSection(
                                      header: const AppText(
                                        text: 'Continent',
                                        size: 18,
                                        weight: FontWeight.bold,
                                      ),
                                      content: ListView.builder(
                                        shrinkWrap: true,
                                        //physics: NeverScrollableScrollPhysics(),
                                        itemCount: 7,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AppText(
                                                  size: 18,
                                                  text:
                                                      '${model.elementAt(index).region}'),
                                              Transform.scale(
                                                scale: 1.3,
                                                child: Checkbox(
                                                  activeColor: darkActive
                                                      ? AppColors.secondaryColor
                                                      : Colors.white,
                                                  checkColor: darkActive
                                                      ? Colors.white
                                                      : AppColors
                                                          .secondaryColor,
                                                  // activeColor: Colors.red,
                                                  value: onSelectRegion,
                                                  onChanged: (checkboxState) {
                                                    setState(() {
                                                      onSelectRegion =
                                                          !onSelectRegion;
                                                    });
                                                  },

                                                  //checkbox shape
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ]),

                              //timezones
                              Accordion(
                                  contentBackgroundColor:
                                      darkActive ? Colors.white : AppColors.bg,
                                  contentBorderWidth: 0.0,
                                  contentBorderColor:
                                      AppColors.grey100.withOpacity(0.0),
                                  headerBackgroundColor:
                                      darkActive ? Colors.white : AppColors.bg,
                                  rightIcon: const Icon(Iconsax.arrow_down_1),
                                  paddingListHorizontal: 0.0,
                                  headerPadding: const EdgeInsets.symmetric(
                                    vertical: 0,
                                    horizontal: 0,
                                  ),
                                  paddingBetweenClosedSections: 0.0,
                                  paddingBetweenOpenSections: 0.0,
                                  contentVerticalPadding: 0.0,
                                  paddingListBottom: 0.0,
                                  paddingListTop: 12.0,
                                  children: [
                                    AccordionSection(
                                      header: const AppText(
                                        text: 'Time zone',
                                        size: 18,
                                        weight: FontWeight.bold,
                                      ),
                                      content: ListView.builder(
                                        shrinkWrap: true,
                                        //physics: NeverScrollableScrollPhysics(),
                                        itemCount: 7,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AppText(
                                                  size: 18,
                                                  text:
                                                      '${model.elementAt(index).timezones}'),
                                              Transform.scale(
                                                scale: 1.3,
                                                child: Checkbox(
                                                  activeColor: darkActive
                                                      ? AppColors.secondaryColor
                                                      : Colors.white,
                                                  checkColor: darkActive
                                                      ? Colors.white
                                                      : AppColors
                                                          .secondaryColor,
                                                  // activeColor: Colors.red,
                                                  value: onSelectRegion,
                                                  onChanged: (checkboxState) {
                                                    setState(() {
                                                      onSelectRegion =
                                                          !onSelectRegion;
                                                    });
                                                  },

                                                  //checkbox shape
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ]),
                              const Gap(h: 20),
                              Row(
                                children: [
                                  Expanded(
                                    child: SecondaryButton(
                                      buttonText: "Reset",
                                      onPressed: () {
                                        //do something
                                        // regionFilterCallback(newTaskTitle);
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: PrimaryButton(
                                      buttonText: "Show results",
                                      onPressed: () {
                                        //do something
                                        // regionFilterCallback(newTaskTitle);
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
