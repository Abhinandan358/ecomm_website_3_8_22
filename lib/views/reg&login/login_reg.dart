// ignore_for_file: unused_import

import 'package:ecommerce_website_logo3_8_22/views/bottomnav/home.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/home/dashboard.dart';
import 'package:ecommerce_website_logo3_8_22/views/reg&login/login.dart';
import 'package:ecommerce_website_logo3_8_22/views/reg&login/reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginReg extends StatefulWidget {
  const LoginReg({Key? key}) : super(key: key);

  @override
  State<LoginReg> createState() => _LoginRegState();
}

class _LoginRegState extends State<LoginReg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: commoncolor,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: const [loginsignup, orange2, white])),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 25),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: iconbtntext(
                        () {
                          Get.to(()=>DashBoardPage());
                        },
                        mytext('SKIP', black2, transperant, 20, FontWeight.bold,
                            null, null, null, null),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: black2,
                        ),
                        ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(transperant))),
                  ),
                  Image.asset(
                    'assets/bg1 6.jpg',
                    fit: BoxFit.cover,
                  ),
                  mytext('Largest Collection of stylish Dress', black2, null,
                      38, FontWeight.bold, null, null, null, TextAlign.center),
                  mytext(
                      'Fashion every Women Deserves Afordable Luxury',
                      black2,
                      null,
                      20,
                      null,
                      null,
                      null,
                      null,
                      TextAlign.center),
                  Row(
                    children: [
                      Expanded(
                        child: custombtn1(() {
                          Get.to(() => Reg());
                        },
                            'SIGNUP',
                            ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(custombtncolr1),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5)))),
                            white1),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: custombtn1(() {
                          Get.to(() => Login());
                        },
                            'LOG IN',
                            ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(white2),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        side: BorderSide(color: custombtncolr1),
                                        borderRadius:
                                            BorderRadius.circular(5)))),
                            custombtncolr1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
