// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/details.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/fashion.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/offer_zone.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
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
  List<CategoryData> _categoryList1 = [];
  late Future<List<CategoryData>> _future;
  List<CategoryList> categoryList1 = [];
  @override
  void initState() {
    super.initState();
    _future = _getPost();
    _getData();
  }

  _getData() async {
    String url =
        'https://demo50.gowebbi.us/api/MasterApi/CategoryAginstSubcategory';
    var result = await get(Uri.parse(url));
    if (result.statusCode == 200) {
      var response = Welcome.fromJson(jsonDecode(result.body));
      categoryList1 = response.categoryList;
      // ignore: avoid_print
      setState(() {});
      // ignore: avoid_print
      print(result.body);
    } else {
      // ignore: avoid_print
      print('Api error ${result.statusCode}');
    }
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
                  myicon(
                    null,
                    black2,
                    Icons.arrow_back,
                  ),
                  mytext(
                    data: 'All Categories',
                    color: black2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(commoncolor))),
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
                                      if (index == 0) {
                                        Get.to(() => const OfferZone());
                                      } else if (index == 2) {
                                        Get.to(() => const Fashion());
                                      } else {
                                        Get.to(() => DetailsPage(
                                            item: categoryList1[index]));
                                      }
                                    },
                                    child: Container(
                                      height: 0.14.sh,
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          color: white2,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      margin: const EdgeInsets.all(10),
                                      child: ClipOval(
                                          child: Image.network(
                                        _categoryList1[index].ImgUrl,
                                        height: 0.14.sh,
                                        width: 0.45.sw,
                                        fit: BoxFit.fill,
                                      )),
                                    ),
                                  ),
                                  mytext(
                                    data: _categoryList1[index].Cat_Name,
                                    color: grey2,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              );
                            }),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                          child: mytext(
                        data: '404 Page Not Found',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
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
