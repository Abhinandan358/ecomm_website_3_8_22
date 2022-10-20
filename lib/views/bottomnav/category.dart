// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:ecommerce_website_logo3_8_22/controller/fetch_category_controller.dart';
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
  final FetchCategoryController _categoryController = Get.find();
  @override
  void initState() {
    super.initState();
    getPost();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: commonback,
        body: ListView.builder(
            itemCount: _categoryController.fetchCategoryList.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _categoryController.fetchCategoryList[index].Id.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(_categoryController.fetchCategoryList[index].Name,style: TextStyle(fontSize: 20)),
                  //Image.network(_categoryController.fetchCategoryList[index].ImgUrl.toString())
                ],
              );
            }));
  }

  void getPost() async {
    await _categoryController.getPost();
    setState(() {});
  }
}
