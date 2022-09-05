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
  Future<List<FetchCompanyData>>? _future;
  // ignore: non_constant_identifier_names
  List<FetchCompanyData> FetchCompanyList = [];
  final FetchCompanyController _controllerFetchCompany = Get.find();
  @override
  void initState() {
    super.initState();
     getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<FetchCompanyData>>(
          future: _future,
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return SizedBox(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: FetchCompanyList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Text('${FetchCompanyList[index].Company_Id}'),
                            Text(FetchCompanyList[index].Company_Name)
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
          })),
    );
  }

  void getData() async {
   await _controllerFetchCompany.getData();
    setState(() {});
  }
}
