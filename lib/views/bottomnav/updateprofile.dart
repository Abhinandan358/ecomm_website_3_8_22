import 'package:ecommerce_website_logo3_8_22/views/bottomnav/profile.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UpadateProfile extends StatefulWidget {
  const UpadateProfile({super.key});

  @override
  State<UpadateProfile> createState() => _UpadateProfileState();
}

class _UpadateProfileState extends State<UpadateProfile> {
  var formkey = GlobalKey<FormState>();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController desCtrl = TextEditingController();
  TextEditingController aboutCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: red6,
        body: Form(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              mytextformfield(fillColor: white, hintText: 'name'),
              // mytextformfield(
              //   fillColor: white,
              //   hintText: 'designation'
              // ),
              // mytextformfield(
              //   fillColor: white,
              //   hintText: 'about'
              // ),
              custombtn(
                  onPressed: () async {
                    final SharedPreferences sharedPreferences =
                        await SharedPreferences.getInstance();
                    sharedPreferences.setString('Name', nameCtrl.text);
                    // sharedPreferences.setString('Designation', desCtrl.text);
                    // sharedPreferences.setString('About', aboutCtrl.text);
                    Get.to(() => Profile());
                  },
                  btntxt: 'Up To Date')
            ],
          ),
        )),
      ),
    );
  }
}
