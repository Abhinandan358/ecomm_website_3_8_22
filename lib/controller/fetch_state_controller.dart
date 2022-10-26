// import 'dart:convert';
// import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart';

// class FetchCountryStateController extends GetxController {
//   // ignore: non_constant_identifier_names
//   List<CountryAginstStateData> FetchCountryStateList = [];

//   Future<List<CountryAginstStateData>> getPost1() async {
//     String url =
//         'https://demo42.gowebbi.in/api/MasterApi/CountryAginstState';
//     var result = await get(Uri.parse(url));
   
//     if (result.statusCode == 200) {
//       print(result.statusCode);
//       print('object');
//       var response = CountryStates.formJson(jsonDecode(result.body));  
//       FetchCountryStateList = response.subcategorystateList1;
     
//       // ignore: avoid_print
//       print(result.body);
//     } 
//     else {
//       // ignore: avoid_print
//       print('Api error ${result.statusCode}');
//     }
//   }
// }
