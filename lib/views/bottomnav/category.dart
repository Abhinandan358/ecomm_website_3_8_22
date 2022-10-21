// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:ecommerce_website_logo3_8_22/controller/fetch_category_controller.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/details.dart';
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
  List<CategoryAgainstSubcategory> _subcategoryList = [];
  @override
  void initState() {
    super.initState();
    getPost();
     _getData();
  }

  _getData() async {
    String url =
        'https://demo42.gowebbi.in/api/MasterApi/CategoryAginstSubcategory';
    var result = await get(Uri.parse(url));
    //List<FetchCategoryData> categoryList1 = [];
    if (result.statusCode == 200) {
      print(result.statusCode);
      print('object');
      var response = Subcategory.formJson(jsonDecode(result.body));
      
      _subcategoryList = response.subcategoryList1;
      // ignore: avoid_print
      setState(() {});
      // ignore: avoid_print
      print(result.body);
    } else {
      // ignore: avoid_print
      print('Api error ${result.statusCode}');
    }
  }
//////////////////////////////////////////////////22222222222222222222

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: commonback,
        body: GridView.builder(
          itemCount: _categoryController.fetchCategoryList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.7,
              ),itemBuilder: ((context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.to(()=>DetailsPage(item:  _subcategoryList[index]));
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        color: white,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: red6,
                          child: Text(_categoryController.fetchCategoryList[index].Id.toString(),style: TextStyle(color: black6),)),
                      ),
                    ),
                    Text(_categoryController.fetchCategoryList[index].Name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                );
              })));
  }

  void getPost() async {
    await _categoryController.getPost();
    setState(() {});
  }
}
