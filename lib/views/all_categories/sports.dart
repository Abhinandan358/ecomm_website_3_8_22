import 'package:ecommerce_website_logo3_8_22/controller/fetch_company_controller.dart';
import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Sports extends StatefulWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {

  final FetchCompanyController _controllerFetchCompany = Get.find();
   Future<List<FetchCompanyData>> ? _future;

  @override
  void initState() {
    super.initState();
  // _future =  getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<FetchCompanyData>>(
            future: _future,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SizedBox(
                    height: 300,
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount:
                            _controllerFetchCompany.FetchCompanyList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 0.14.sh,
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: white2,
                                    borderRadius: BorderRadius.circular(20)),
                                margin: const EdgeInsets.all(10),
                                child: Text(_controllerFetchCompany
                                    .FetchCompanyList[index].Company_Name),
                              ),
                            ],
                          );
                        }));
              } else if (snapshot.hasError) {
                return const Text('404');
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
            }));
  }

  void getData() async {
    await _controllerFetchCompany.getData();
    setState(() {});
  }
}
