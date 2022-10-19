import 'dart:convert';
import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class FetchCountryController extends GetxController {
  // ignore: non_constant_identifier_names
  List<CountryData> FetchCompanyList = [];

  Future<List<CountryData>> getPost() async {
    String url = 'https://demo42.gowebbi.in/api/MasterApi/FetchCountry';
    var result = await get(Uri.parse(url));
    if (result.statusCode == 200) {
      var response = CountryModel.formJson(jsonDecode(result.body));
      if (response.status == 'success') {
        FetchCompanyList = response.dataList;
      }
      // ignore: avoid_print
      print(result.body);
    } else {
      // ignore: avoid_print
      print('Api error ${result.statusCode}');
    }
    return [];
  }
}
