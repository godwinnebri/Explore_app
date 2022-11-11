import 'package:explore_app/models/country_model.dart';
import 'package:explore_app/services/remote_service.dart';
import 'package:explore_app/widgets/country_tile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class CountryBuilder extends StatefulWidget {
  // final List contacts;
  // const CountryBuilder({required this.contacts});

  @override
  State<CountryBuilder> createState() => _CountryBuilderState();
}

class _CountryBuilderState extends State<CountryBuilder> {
  String url = 'https://restcountries.com/v3.1/all';
  late List<CountryModel>? _countryModel = [];
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    _countryModel = (await RemoteService().getCountries())!;

    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));

    // if (_countryModel != null) {
    //   setState(() {
    //     isLoaded = true;
    //   });
    // }
    // print(isLoaded);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //height: double.maxFinite,
      child: ListView.builder(
        shrinkWrap: true,
        //physics: const NeverScrollableScrollPhysics(),
        //itemCount: widget.contacts.length,
        itemCount: _countryModel!.length,
        itemBuilder: (context, index) {
          return const CountryTile(
              // name: widget.contacts[index].name,
              // image: widget.contacts[index].image,
              // number: widget.contacts[index].number,
              name: 'Nigeria',
              image: 'hdhfdhfjdhfjhd',
              number: 'hdhfdhd');
        },
      ),
    );
  }
}
