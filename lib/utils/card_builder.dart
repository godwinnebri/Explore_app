import 'package:explore_app/core/api_provider.dart';
import 'package:explore_app/models/country_model.dart';
import 'package:explore_app/services/remote_service.dart';
import 'package:explore_app/widgets/country_tile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:provider/provider.dart';

class CountryBuilder extends StatefulWidget {
  // final List contacts;
  // const CountryBuilder({required this.contacts});

  @override
  State<CountryBuilder> createState() => _CountryBuilderState();
}

class _CountryBuilderState extends State<CountryBuilder> {
  late List<CountryModel>? _countryModel = [];
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    final apiProvider = Provider.of<ApiProvider>(context, listen: false);
    apiProvider.fetchCountries();
  }

  // void getData() async {
  //   _countryModel = (await RemoteService().getCountries())!;

  //   Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));

  //   // if (_countryModel != null) {
  //   //   setState(() {
  //   //     isLoaded = true;
  //   //   });
  //   // }
  //   // print(isLoaded);
  // }

  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);
    var model = apiProvider.countryList;
    model.sort((a, b) => a.name!.common!.compareTo(b.name!.common!));
    return Expanded(
      //height: double.maxFinite,
      child: ListView.builder(
        //shrinkWrap: true,
        //physics: const NeverScrollableScrollPhysics(),
        itemCount: model.length,
        // itemCount: 20,
        itemBuilder: (context, index) {
          return CountryTile(
            name: "${model.elementAt(index).name?.common}",
            capital: "${model.elementAt(index).capital}",
            image: "${model.elementAt(index).flags?.png}",
          );
        },
      ),
    );
  }
}
