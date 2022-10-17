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
  String? dropdown;
  bool checkbox = false;
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonback,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          iconTheme: const IconThemeData(color: black6),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                mytext(
                    data: 'Login',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: red6),
                mytext(
                    data: 'Welcome Back To your Account',
                    fontSize: 20,
                    color: black6),
              ],
            ),
          ),
          elevation: 0,
          backgroundColor: commonback,
        ),
      ),
      body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 0.9.sh,
                  color: logins,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                                text: mytextspan(
                                    text: 'EMAIL ADDRESS',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    children: [
                                  mytextspan(
                                      text: '*',
                                      color: red6,
                                      fontWeight: FontWeight.bold)
                                ]))),
                        mytextformfield(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: emailCtrl,
                            validator: ((value) {
                              if (value!.isEmpty) {
                                return "Please provide only your registered emailid";
                              }
                              return null;
                            }),
                            hintText: 'Write Email',
                            labelText: 'Email',
                            labelStyle: TextStyle(color: grey),
                            decoration: const InputDecoration(
                              fillColor: white,
                              filled: true,
                              border: InputBorder.none,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 25, top: 15, right: 15),
                            )),
                        Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                                text: mytextspan(
                                    text: 'PASSWORD',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    children: [
                                  mytextspan(
                                      text: '*',
                                      color: red6,
                                      fontWeight: FontWeight.bold)
                                ]))),
                        mytextformfield(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: _obsecureText,
                          controller: passCtrl,
                          labelText: 'Password',
                          labelStyle: TextStyle(color: grey),
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
                          hintText: 'Write Password',
                          decoration: InputDecoration(
                            fillColor: white,
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 25, top: 11, right: 15),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                                text: mytextspan(
                                    text: 'USER TYPE',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    children: [
                                  mytextspan(
                                      text: '*',
                                      color: red6,
                                      fontWeight: FontWeight.bold)
                                ]))),
                        DropdownButtonFormField(
                            value: dropdown,
                            isExpanded: true,
                            focusColor: white,
                            icon: const SizedBox.shrink(),
                            hint: mytext(data: 'SELECT'),
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                            items: [
                              DropdownMenuItem(
                                  value: 'vendor',
                                  child: mytext(data: 'Vendor')),
                              DropdownMenuItem(
                                  value: 'buyer', child: mytext(data: 'Buyer')),
                            ],
                            onChanged: (value) {
                              setState(() {
                                dropdown = value as String;
                              });
                            }),
                        SizedBox(
                          height: 0.05.sh,
                        ),
                        custombtn(
                            onPressed: () {},
                            btntxt: 'Login',
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return Colors.blue;
                              }
                              return Colors.black;
                            })),
                        SizedBox(
                          height: 0.02.sh,
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(()=>ForgotPass());
                          },
                          child: mytext(data: 'Forgot Password?', color: blue)),
                        CheckboxListTile(
                          checkColor: white,
                          activeColor: blue,
                          contentPadding: EdgeInsets.symmetric(horizontal: 85),
                          value: checkbox,
                          onChanged: (val) {
                            setState(() {
                              checkbox = val ?? false;
                            });
                          },
                          title: mytext(data: 'Remember Me'),
                          controlAffinity: ListTileControlAffinity.leading,
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
                                  color: black6,
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
                                            side: BorderSide(color: black6))),
                                    backgroundColor:
                                        MaterialStateProperty.all(logins)),
                                black6)
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
