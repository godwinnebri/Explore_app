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

  void getJsonData() async {
    Response response = await get(Uri.parse(url));
    print(response.statusCode);
    List data = jsonDecode(response.body);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //height: double.maxFinite,
      child: ListView.builder(
        shrinkWrap: true,
        //physics: const NeverScrollableScrollPhysics(),
        //itemCount: widget.contacts.length,
        itemCount: 10,
        itemBuilder: (context, index) {
          return CountryTile(
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
