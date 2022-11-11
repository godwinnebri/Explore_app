import 'package:explore_app_1/widgets/gap.dart';
import 'package:explore_app_1/widgets/texts/apptext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CountryTile extends StatelessWidget {
  final String name;
  final String capital;
  final String image;

  const CountryTile(
      {required this.name, required this.capital, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //image
            Flexible(
              child: Row(
                children: [
                  //image
                  Container(
                    height: 45.0,
                    width: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  //
                  const Gap(w: 16),

                  //country && capital
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: SizedBox(
                            // width: MediaQuery.of(context).size.width * 0.7,
                            child: AppText(
                              text: name,
                              size: 18,
                              weight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        const Gap(h: 4),

                        //number
                        Flexible(
                          child: AppText(
                            text: capital,
                            size: 14,
                            color: Colors.grey,
                          ),
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
    );
  }
}
