import 'dart:convert';
import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/home.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Homedetails extends StatefulWidget {
  final ProductModel item;
  const Homedetails({Key? key, required this.item}) : super(key: key);

  @override
  State<Homedetails> createState() => _HomedetailsState();
}

class _HomedetailsState extends State<Homedetails> {
  List<CategoryColorData> _categorycolorList = [];
  late Future<List<CategoryColorData>> _future;

  @override
  void initState() {
    super.initState();
    _future = _getPost();
  }

  Future<List<CategoryColorData>> _getPost() async {
    String url = 'https://demo50.gowebbi.us/api/MasterApi/FetchColor';
    var result = await get(Uri.parse(url));
    if (result.statusCode == 200) {
      var response = CategoryColorModel.formJson(jsonDecode(result.body));
      if (response.status == 'success') {
        _categorycolorList = response.dataList1;
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
      backgroundColor: commoncolor,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: black2),
          backgroundColor: white,
          title: mytext(
              'Homedetails', black2, null, null, null, null, null, null)),
      body: FutureBuilder<List<CategoryColorData>>(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    parent: BouncingScrollPhysics()),
                child: Column(
                  children: [
                    Image.network(
                      widget.item.image,
                      fit: BoxFit.cover,
                      height: 0.5.sh,
                      width: 1.sw,
                    ),
                    mytext('Product Name- ${widget.item.name}', black2, null,
                        25, FontWeight.bold, null, null, null),
                    mytext('Product Price- ${widget.item.price}', black2, null,
                        20, FontWeight.bold, null, null, null),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (var i = 0; i < _categorycolorList.length; i++)
                          Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(5),
                                color: colorList[i]),
                            child: InkWell(
                              onTap: () {},
                              child: mytext(_categorycolorList[i].Color_Name, colorList2[i], null, 20, FontWeight.bold, null, null,null),
                            ),
                          ),
                      ],
                    )
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return  Center(
                  child: mytext('404 Page Not Found', null, null, 20, FontWeight.bold, null, null, null));
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
          }),
      bottomNavigationBar: Row(
        children: [custombtn(() {}, 'Add To Cart')],
      ),
    );
  }
}

List colorList = [red6, black6, white6];
List colorList2 = [black6, white6, black6];
