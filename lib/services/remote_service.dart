// import 'dart:convert';

// import 'package:explore_app/models/country_model.dart';
// import 'package:http/http.dart' as http;

// class RemoteService {
//   Future<List<CountryModel>?> getCountries() async {
//     var client = http.Client();

//     var uri = Uri.parse('https://restcountries.com/v3.1/all');
//     var response = await client.get(uri);
//     print(response.body);

//     if (response.statusCode == 200) {
//       var json = jsonDecode(response.body);
//       final countryModel = countryModelFromJson(json);
//     }
//   }
// }
