import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                      colors: [white1, red2],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)
          ),
          child: Column(
            children: [
              Image.network('https://media.istockphoto.com/photos/identity-theft-concept-on-mobile-phone-picture-id1409102261?b=1&k=20&m=1409102261&s=170667a&w=0&h=jbLFjjfHbbhM72iA3C29fVBFSqO9EJwz5UBXrULqh5U=',height: 0.5.sh,width: 1.sw,fit: BoxFit.cover,),
              SizedBox(height: .09.sh),
              custombtn((){Get.to(()=>const Reg());}, 'Registration'),
              SizedBox(height: .05.sh),
              custombtn((){Get.to(()=>const Login());}, 'Login')
            ],
          ),
        ),
      ),
    );
  }
}