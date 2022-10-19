// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/fashion.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/offer_zone.dart';
import 'package:ecommerce_website_logo3_8_22/views/home/dashboard.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<CategoryData1> _categoryList1 = [];
  late Future<List<CategoryData1>> _future;
  //List<CategoryList> categoryList1 = [];
  @override
  void initState() {
    super.initState();
    _future = _getPost();
    // _getData();
  }

  // _getData() async {
  //   String url =
  //       'https://demo50.gowebbi.us/api/MasterApi/CategoryAginstSubcategory';
  //   var result = await get(Uri.parse(url));
  //   if (result.statusCode == 200) {
  //     var response = Welcome.fromJson(jsonDecode(result.body));
  //     categoryList1 = response.categoryList;
  //     // ignore: avoid_print
  //     setState(() {});
  //     // ignore: avoid_print
  //     print(result.body);
  //   } else {
  //     // ignore: avoid_print
  //     print('Api error ${result.statusCode}');
  //   }
  // }
//////////////////////////////////////////////////22222222222222222222
  // Future<List<CategoryData1>> _getPost() async {
  //   String url = 'https://demo42.gowebbi.in/api/MasterApi/FetchCategory';
  //   var result = await get(Uri.parse(url));
  //   if (result.statusCode == 200) {
  //     var response = FetchCategoryApiModel1.formJson(jsonDecode(result.body));
  //     if (response.status == 'success') {
  //       _categoryList1 = response.dataList;
  //     }
     
  //     print(result.body);
  //   } else {
  //     // ignore: avoid_print
  //     print('Api error ${result.statusCode}');
  //   }
  //   return [];
  // }
 Future<List<CategoryData1>> _getPost() async {
    String url = 'https://demo42.gowebbi.in/api/MasterApi/FetchCategory';
    var result = await get(Uri.parse(url));
    if (result.statusCode == 200) {
      var response = FetchCategoryApiModel1.formJson(jsonDecode(result.body));
      if (response.status == 'success') {
        _categoryList1 = response.dataList;
      }
      // ignore: avoid_print
      print(result.body);
    } else {
      // ignore: avoid_print
      print('Api error ${result.statusCode}');
    }
    return [];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonback,
      body: FutureBuilder<List<CategoryData1>>(
        future: _future,
        builder: (context,snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: _categoryList1.length,
              itemBuilder: (context,index){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_categoryList1[index].Name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)
                ],
              );
            });
          }
          else if(snapshot.hasData){
            return Text('data');
          }else{
            return Text('error');
          }
        }),
    );
  }
}
