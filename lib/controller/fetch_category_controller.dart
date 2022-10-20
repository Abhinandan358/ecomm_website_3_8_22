import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class FetchCategoryController extends GetxController {
 List<FetchCategoryData> fetchCategoryList = [];

  Future<List<FetchCategoryData>> getPost() async {
    String url = 'https://demo42.gowebbi.in/api/MasterApi/FetchCategory';
    var result = await get(Uri.parse(url));
    if (result.statusCode == 200) {
      var response = FetchCategoryApiModel1.formJson(jsonDecode(result.body));
      if (response.status == 'success') {
        fetchCategoryList = response.dataList;
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
