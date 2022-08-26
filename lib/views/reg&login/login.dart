// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/home/dashboard.dart';
import 'package:ecommerce_website_logo3_8_22/views/reg&login/forgotpass.dart';
import 'package:ecommerce_website_logo3_8_22/views/reg&login/reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obsecureText = true;
  var formkey = GlobalKey<FormState>();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commoncolor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black1),
        elevation: 0,
        backgroundColor: white,
        title: const Text('Ecommerce Website', style: TextStyle(color: brown)),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const Reg());
              },
              icon: const Icon(Icons.app_registration)),
          const Text('Signup', style: TextStyle(color: black1))
        ],
      ),
      body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 0.90.sh,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('SignIn', style: TextStyle(fontSize: 30)),
                    TextFormField(
                      controller: emailCtrl,
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Please provide only your registered emailid";
                        }
                        return null;
                      }),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Write Email'),
                    ),
                    TextFormField(
                      obscureText: _obsecureText,
                      controller: passCtrl,
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "give your password";
                        }
                        return null;
                      }),
                      decoration: InputDecoration(
                          hintText: 'Write Password',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obsecureText = !_obsecureText;
                                });
                              },
                              icon: Icon(_obsecureText
                                  ? Icons.visibility
                                  : Icons.visibility_off))),
                    ),
                    SizedBox(
                      height: 0.1.sh,
                    ),
                    custombtn(() {
                      if (formkey.currentState!.validate()) {
                        postData(emailCtrl.text, passCtrl.text);
                      }
                    }, 'Login'),
                    TextButton(
                        onPressed: () {
                          Get.to(() => const Reg());
                        },
                        child: const Text(
                          'If You no account then go to SignUp',
                          style: TextStyle(color: black2),
                        )),
                    TextButton(
                        onPressed: () {
                          Get.to(() => const ForgotPass());
                        },
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(color: black2),
                        ))
                  ],
                ),
              ),
            ),
          )),
    );
  }

  postData(String Email1, String Password1) async {
    var url = 'https://demo50.gowebbi.us/api/RegisterApi/Login';
    Map<String, dynamic> param = {
      "Email": emailCtrl.text,
      "Password": passCtrl.text
    };
    var result = await post(Uri.parse(url), body: param);
    var data = jsonDecode(result.body);
    if (result.statusCode == 200) {
      // ignore: avoid_print
      print(result.body);
    }
    if (data['status'] == 'success') {
      Fluttertoast.showToast(
          msg: "Login Succesfull",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      Get.to(() => const DashBoardPage());
    } else {
      Fluttertoast.showToast(
          msg: data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
