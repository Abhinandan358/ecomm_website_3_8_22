// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/models/category_model.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/electronic.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/fashion.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/sports.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/home_kitchecn.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/household.dart';
import 'package:ecommerce_website_logo3_8_22/views/all_categories/makeup.dart';
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
  double productitemHeight = 0.4.sh;
  final List<CategoryModel> _categoryList = [
    // CategoryModel('assets/OFFER ZONE.png', 'Offer Zone'),
    // CategoryModel('assets/watch.png', 'Fashion'),
    // CategoryModel('assets/saree.png', 'Electronic'),
    // CategoryModel('assets/shoe.png', 'Sports'),
    // CategoryModel('assets/makeup.png', 'Makeup'),
    // CategoryModel('assets/care.png', 'Personal Care'),
    // CategoryModel('assets/sprey.png', 'Household & Cleaning'),
    // CategoryModel('assets/kitchen.png', 'Home & Kitchen'),
    // CategoryModel('assets/baby care.png', 'Baby Care'),
    // CategoryModel('assets/snacks.png', 'Snacks & Packaged Food'),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPost();
  }

  void getPost() async {
    String Url = 'https://demo50.gowebbi.us/api/MasterApi/FetchCategory';
    var result = await get(Uri.parse(Url));
    if (result.statusCode == 200) {
      var response = CategoryApiModel.formJson(jsonDecode(result.body));
      if (response.status == 'success') {
        _categoryList1 = response.dataList;
        setState(() {});
      }

      print(result.body);
    } else {
      print('Api error ${result.statusCode}');
    }
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
              iconbtntext(() {
                Navigator.of(context).pop();
              },
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
              SizedBox(
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
                              Get.to(() => screenList[index]);
                            },
                            child: Container(
                              height: 0.14.sh,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: white2,
                                  borderRadius: BorderRadius.circular(20)),
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
                          Text('${_categoryList1[index].Cat_Name}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: grey2))
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryModel {
  final image, pname;
  CategoryModel(this.image, this.pname);
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
