import 'package:ecommerce_website_logo3_8_22/controller/fetch_company_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sports extends StatefulWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  final FetchCompanyController _controllerFetchCompany = Get.find();

  // Future<List<FetchCompanyData>>? _future;
  @override
  void initState() {
    super.initState();
    getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            height: 300,
            child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _controllerFetchCompany.FetchCompanyList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return Text(_controllerFetchCompany
                      .FetchCompanyList[index].Company_Name);
                })));
  }

  void getPost() async {
    await _controllerFetchCompany.getPost();
    setState(() {});
  }
}
