import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class FetchCompanyController extends GetxController {
  // ignore: non_constant_identifier_names
  List<FetchCompanyData> FetchCompanyList = [];

  Future<List<FetchCompanyData>> getData() async {
    String url = 'https://demo50.gowebbi.us/api/MasterApi/FetchCompany';
    var result = await get(Uri.parse(url));
    if (result.statusCode == 200) {
      var response = FetchCompanyApi.formJson(jsonDecode(result.body));
      if (response.status == 'success') {
        FetchCompanyList = response.FetchCompanydatalist;
      }
      // ignore: avoid_print
      print(result.body);
    } else {
      // ignore: avoid_print
      print('Api Result ${result.statusCode}');
    }
    return [];
  }
}
