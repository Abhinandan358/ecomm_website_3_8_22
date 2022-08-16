import 'dart:async';

import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/home/bottomnavpage.dart';
import 'package:ecommerce_website_logo3_8_22/reg&login/login_reg.dart';
import 'package:ecommerce_website_logo3_8_22/reg&login/reg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => Get.off(() => LoginReg()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [white1, green3],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SafeArea(
            child: Center(
                child: ClipOval(
                    child: Stack(
          children: [
            Image.asset(
              'assets/a2.jpg',
              fit: BoxFit.fill,
              width: 0.4.sh,
              height: 0.4.sh,
            ),
            Positioned(
              left: 130,
              top: 110,
              child: CupertinoActivityIndicator(
                radius: 30,
                color: white,
              ),
            )
          ],
        )))),
      ),
    );
  }
}
