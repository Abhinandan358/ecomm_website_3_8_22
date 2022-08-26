// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  double productitemHeight = 0.4.sh;
  static final List<CategoryModel> _categoryList = [
    CategoryModel('assets/OFFER ZONE.png', 'Offer Zone'),
    CategoryModel('assets/saree.png', 'Fashion'),
    CategoryModel('assets/shoe.png', 'Footwear'),
    CategoryModel('assets/watch.png', 'Watches'),
    CategoryModel('assets/makeup.png', 'Makeup'),
    CategoryModel('assets/care.png', 'Personal Care'),
    CategoryModel('assets/sprey.png', 'Household & Cleaning'),
    CategoryModel('assets/kitchen.png', 'Home & Kitchen'),
    CategoryModel('assets/baby care.png', 'Baby Care'),
    CategoryModel('assets/snacks.png', 'Snacks & Packaged Food'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonback,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              iconbtntext(
                  () {},
                  Icon(
                    Icons.arrow_back,
                    color: black2,
                  ),
                  Text(
                    'All Categories',
                    style: TextStyle(color: black2),
                  )),
              SizedBox(
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _categoryList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.66,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 0.26.sw,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: white2,
                                borderRadius: BorderRadius.circular(20)),
                            margin: const EdgeInsets.all(10),
                            child: CircleAvatar(
                                radius: 50,
                                child: ClipOval(
                                    child: Image.asset(
                                  _categoryList[index].image,
                                  height: 0.13.sh,
                                  width: 0.4.sw,
                                  fit: BoxFit.cover,
                                ))),
                          ),
                          Text(_categoryList[index].pname,
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
