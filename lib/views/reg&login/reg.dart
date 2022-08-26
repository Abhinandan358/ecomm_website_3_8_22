// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/home/dashboard.dart';
import 'package:ecommerce_website_logo3_8_22/views/reg&login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  var formkey = GlobalKey<FormState>();
  bool _obsecureText = true;
  bool _cobsecureText = true;
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  TextEditingController cpassCtrl = TextEditingController();
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
                Get.to(() => const Login());
              },
              icon: const Icon(Icons.login)),
          const Text(
            'Login',
            style: TextStyle(color: black1),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 0.87.sh,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('Registration', style: TextStyle(fontSize: 30)),
                    TextFormField(
                      controller: nameCtrl,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please provide your name";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: 'Write Name', border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      controller: emailCtrl,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please provide your Email";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: 'Write Email',
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      controller: phoneCtrl,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please provide your Phone Number";
                        } else if (value.length < 10) {
                          return "Atleast 10 digit required";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          counterText: "",
                          hintText: 'Write Phone Number',
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                        controller: passCtrl,
                        obscureText: _obsecureText,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please provide your Password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obsecureText = !_obsecureText;
                                  });
                                },
                                icon: Icon(_obsecureText
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            hintText: 'Write Password',
                            border: const OutlineInputBorder())),
                    TextFormField(
                      controller: cpassCtrl,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: _cobsecureText,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: 'Confirm Password',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _cobsecureText = !_cobsecureText;
                                });
                              },
                              icon: Icon(_cobsecureText
                                  ? Icons.visibility
                                  : Icons.visibility_off))),
                    ),
                    custombtn(() {
                      if (formkey.currentState!.validate()) {
                        postData(nameCtrl.text, emailCtrl.text, phoneCtrl.text,
                            passCtrl.text, cpassCtrl.text);
                        const CupertinoActivityIndicator(
                          color: green,
                        );
                      }
                    }, 'SignUp'),
                    TextButton(
                        onPressed: () {
                          Get.to(() => const Login());
                        },
                        child: const Text(
                          'If you have already an account go to Login',
                          style: TextStyle(color: black2),
                        )),
                    TextButton(
                        onPressed: () {
                          Get.to(() => const DashBoardPage());
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(color: black2),
                        ))
                  ],
                ),
              ),
            )),
      ),
    );
  }

  postData(String Name1, Email1, PhoneNo1, Password1, ConfirmPassword1) async {
    String url = 'https://demo50.gowebbi.us/api/RegisterApi/UserRegister';
    Map<String, dynamic> param = {
      "Name": nameCtrl.text,
      "Email": emailCtrl.text,
      "PhoneNo": phoneCtrl.text,
      "Password": passCtrl.text,
      "ConfirmPassword": cpassCtrl.text
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
      Get.to(() => const DashBoardPage());
    }
  }
}
