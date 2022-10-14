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
        iconTheme: const IconThemeData(color: black2),
        elevation: 0,
        backgroundColor: commoncolor,
      ),
      body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                mytext(
                  data: 'Login',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                mytext(
                  data: 'Welcome Back To your Account',
                  fontSize: 18,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 0.76.sh,
                  decoration: BoxDecoration(color: login),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 20, right: 20),
                    child: Column(
                      children: [
                        mytextformfield(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: emailCtrl,
                          hintText: 'E-Mail',
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return "Please provide only your registered emailid";
                            }
                            return null;
                          }),
                          decoration: InputDecoration(
                            fillColor: white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 25, top: 11, right: 15),
                            labelText: 'E-mail',
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        mytextformfield(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: _obsecureText,
                          controller: passCtrl,
                          hintText: 'Password',
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return "give your password";
                            }
                            return null;
                          }),
                          suffixIcon: myiconbutton(() {
                            setState(() {
                              _obsecureText = !_obsecureText;
                            });
                          },
                              myicon(
                                  null,
                                  null,
                                  _obsecureText
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                              null,
                              null,
                              null,
                              null),
                          decoration: InputDecoration(
                            fillColor: white,
                            filled: true,
                            labelText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 25, top: 11, right: 15),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        custombtn(() {
                          if (formkey.currentState!.validate()) {
                            postData(emailCtrl.text, passCtrl.text);
                          }
                        }, 'Login'),
                        TextButton(
                            onPressed: () {
                              Get.to(() => const ForgotPass());
                            },
                            child: mytext(
                              data: 'Forgot Password?',
                              color: Color.fromRGBO(6, 25, 197, 1),
                            )),
                        SizedBox(
                          height: 180,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Get.to(() => const Reg());
                                },
                                child: mytext(
                                  data: 'Don\'t have an Account?',
                                  color: black2,
                                  fontSize: 16,
                                )),
                            custombtn1(() {
                              Get.to(() => const Reg());
                            },
                                'Signup',
                                ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            side: BorderSide(color: black1))),
                                    backgroundColor:
                                        MaterialStateProperty.all(login)),
                                black2)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
