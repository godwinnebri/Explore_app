import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/country_model.dart';

class ApiProvider extends ChangeNotifier {
  bool loading = false;
  List<CountryModel> countryList = [];

  Future<bool> fetchCountries() async {
    loading = true;
    http.Response response;
    log("fetching countries");

    response = await http.get(
      Uri.parse("https://restcountries.com/v3.1/all"),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
    );
    if (response.statusCode == 200) {
      loading = false;
      countryList = countryApiModelFromJson(response.body);
      log(response.body.toString());
      notifyListeners();
      return true;
    } else {
      log(response.body.toString());
      loading = false;
      notifyListeners();
      return false;
    }
  }
}
