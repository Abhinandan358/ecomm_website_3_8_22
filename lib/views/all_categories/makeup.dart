import 'dart:convert';
import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Makeup extends StatefulWidget {
  const Makeup({Key? key}) : super(key: key);

  @override
  State<Makeup> createState() => _MakeupState();
}

class _MakeupState extends State<Makeup> {
  List<CategoryList> categoryList1 = [];
  final List<Welcome> item = [];
  // late Future<List<Welcome>> _future;
  @override
  void initState() {
    super.initState();
    _getPost();
  }

  _getPost() async {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 0.5.sh,
          child: GridView.builder(
              itemCount: categoryList1.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    // CircleAvatar(
                    //   radius: 30,
                    //   backgroundColor: red6,
                    //   child: Text(
                    //     categoryList1[i].catId,
                    //     style: const TextStyle(
                    //         color: white6, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                    //Text(categoryList1[i].catName),
                    for (var i = 0;
                        i < categoryList1[i].subcategorylist.length;
                        i++)
                      Text(categoryList1[i].subcategorylist[i].subName)
                  ],
                );
              }),
        ),
      ),
    );
  }
}
