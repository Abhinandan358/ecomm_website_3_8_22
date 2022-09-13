import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:loading_indicator/loading_indicator.dart';

class FetchSizeApi extends StatefulWidget {
  const FetchSizeApi({Key? key}) : super(key: key);

  @override
  State<FetchSizeApi> createState() => _FetchSizeApiState();
}

class _FetchSizeApiState extends State<FetchSizeApi> {
  List<FetchBrandData> _fetchbrandList = [];
  late Future<List<FetchBrandData>> _future;
  @override
  void initState() {
    super.initState();
    _future = _getData();
  }

  Future<List<FetchBrandData>> _getData() async {
    String url = 'https://demo50.gowebbi.us/api/MasterApi/FetchBrand';
    var result = await get(Uri.parse(url));
    if (result.statusCode == 200) {
      var response = FetchBrandApi.formJson(jsonDecode(result.body));
      if (response.status == 'success') {
        _fetchbrandList = response.FetchBrandDatalist;
      }
      // ignore: avoid_print
      print(result.body);
      setState(() {});
    } else {
      // ignore: avoid_print
      print('Api error ${result.statusCode}');
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: green1,
        appBar: AppBar(
          title: const Text('data'),
        ),
        body: FutureBuilder<List<FetchBrandData>>(
            future: _future,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    SizedBox(
                      height: 0.8.sh,
                      child: ListView.builder(
                          itemCount: _fetchbrandList.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Text('${_fetchbrandList[index].Brand_Id}'),
                                CircleAvatar(
                                    radius: 50,
                                    backgroundColor: red,
                                    child: Text(
                                      _fetchbrandList[index].Brand_Name,
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ))
                              ],
                            );
                          }),
                    )
                  ],
                );
              } else if (snapshot.hasError) {
                return const Text('404 Page Not Found');
              } else {
                return const Center(
                  child: SizedBox(
                      width: 50,
                      child: LoadingIndicator(
                        indicatorType: Indicator.ballBeat,
                        strokeWidth: 3.0,
                        colors: [red, black, blue],
                      )),
                );
              }
            }));
  }
}
