// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/makeup.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/electronic.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/fashion.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/sports.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/home_kitchecn.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/household.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/offer_zone.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/personal_care.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/snacks.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/watches.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<CategoryData> _categoryList1 = [];
  late Future<List<CategoryData>> _future;

  @override
  void initState() {
    super.initState();
    _future = _getPost();
  }

  Future<List<CategoryData>> _getPost() async {
    String url = 'https://demo50.gowebbi.us/api/MasterApi/FetchCategory';
    var result = await get(Uri.parse(url));
    if (result.statusCode == 200) {
      var response = CategoryApiModel.formJson(jsonDecode(result.body));
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              iconbtntext(
                  () {},
                  const Icon(
                    Icons.arrow_back,
                    color: black2,
                  ),
                  const Text(
                    'All Categories',
                    style: TextStyle(
                        color: black2,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
              FutureBuilder<List<CategoryData>>(
                  future: _future,
                  builder: ((context, snapshot) {
                    if (snapshot.hasData) {
                      return SizedBox(
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: _categoryList1.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 0.7,
                            ),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      
                                    },
                                    child: Container(
                                      height: 0.14.sh,
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          color: white2,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      margin: const EdgeInsets.all(10),
                                      child: CircleAvatar(
                                          radius: 50,
                                          child: ClipOval(
                                              child: Image.network(
                                            _categoryList1[index].ImgUrl,
                                            height: 0.13.sh,
                                            width: 0.4.sw,
                                            fit: BoxFit.fill,
                                          ))),
                                    ),
                                  ),
                                  Text(_categoryList1[index].Cat_Name,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(color: grey2,fontWeight: FontWeight.bold,fontSize: 17)),
                                ],
                              );
                            }),
                      );
                    } else if (snapshot.hasError) {
                      return const Center(
                          child: Text(
                        '404 Page Not Found',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ));
                    } else {
                      return Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: Center(
                            child: SizedBox(
                          height: 0.09.sh,
                          child: const LoadingIndicator(
                              indicatorType: Indicator.ballPulseRise,
                              colors: [red5, green1, blue2],
                              strokeWidth: 3.0,
                              pathBackgroundColor: Colors.black),
                        )),
                      );
                    }
                  }))
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> screenList = [
  const Makeup(),
  const Fashion(),
  const Electronic(),
  const Sports(),
  const OfferZone(),
  const Watches(),
  const PersonalCare(),
  const Household(),
  const HomeKitchen(),
  const Snacks()
];
