import 'dart:convert';
import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';

class Electronic extends StatefulWidget {
  const Electronic({Key? key}) : super(key: key);

  @override
  State<Electronic> createState() => _ElectronicState();
}

class _ElectronicState extends State<Electronic> {
  List<Subcategorylist> subcategorylistModelList = [];
  List<CategoryList> categoryList1 = [];
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
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(categoryList1[index].catId),
                    Text(categoryList1[index].catName),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
