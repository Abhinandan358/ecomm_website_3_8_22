// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
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
    CategoryModel(
        'assets/OFFER ZONE.png',
        'Offer Zone'),
    CategoryModel(
        'assets/saree.png',
        'Fashion'),
    CategoryModel(
        'assets/shoe.png',
        'Footwear'),
    CategoryModel(
        'assets/watch.png',
        'Watches'),
    CategoryModel(
        'assets/makeup.png',
        'Makeup'),
    CategoryModel(
        'assets/care.png',
        'Personal Care'),
    CategoryModel(
        'assets/sprey.png',
        'Household & Cleaning'),
    CategoryModel(
        'assets/kitchen.png',
        'Home & Kitchen'),
    CategoryModel(
        'assets/baby care.png',
        'Baby Care'),
    CategoryModel(
        'assets/snacks.png',
        'Snacks & Packaged Food'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonback,
      body: SizedBox(
        height: productitemHeight * _categoryList.length / 3,
        child: GridView.builder(
            itemCount: _categoryList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    margin: const EdgeInsets.all(10),
                    child: CircleAvatar(
                        radius: 50,
                        child: ClipOval(
                            child: Image.asset(
                          _categoryList[index].image,
                          height: 0.13.sh,
                          width: 0.32.sw,
                          fit: BoxFit.cover,
                        ))),
                  ),
                  Text(_categoryList[index].pname,style: const TextStyle(color: grey))
                ],
              );
            }),
      ),
    );
  }
}

class CategoryModel {
  final image, pname;

  CategoryModel(this.image, this.pname);
}
