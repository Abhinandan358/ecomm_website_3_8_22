import 'dart:async';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/reg&login/login_reg.dart';
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
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.off(() => const LoginReg()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonback,
      body: Center(
        child: ClipOval(
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd0slgUlzxIds_ooQN1yV4BoQJP4M6EY7E0LBV3cGcFRKhJ54nRINul3CuKFQoGRWUYpQ&usqp=CAU',
            fit: BoxFit.cover,
            width: 0.4.sh,
            height: 0.4.sh,
          ),
        ),
      ),
    );
  }
}
