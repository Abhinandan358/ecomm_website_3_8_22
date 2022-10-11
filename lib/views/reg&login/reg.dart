// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/home/dashboard.dart';
import 'package:ecommerce_website_logo3_8_22/views/reg&login/login.dart';
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
                  data: 'Sign Up',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                mytext(
                  data: 'Access To Your Account',
                  fontSize: 18,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 0.76.sh,
                  decoration: BoxDecoration(color: login),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                              hintText: 'Write Name',
                              fillColor: white,
                              filled: true,
                              border: InputBorder.none,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 25, top: 15, right: 15)),
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: emailCtrl,
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return "Please provide only your registered emailid";
                            }
                            return null;
                          }),
                          decoration: InputDecoration(
                              fillColor: white,
                              filled: true,
                              border: InputBorder.none,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 25, top: 15, right: 15),
                              hintText: 'Write Email'),
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
                            border: InputBorder.none,
                            fillColor: white,
                            filled: true,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 25, top: 15, right: 15),
                          ),
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: _obsecureText,
                          controller: passCtrl,
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return "give your password";
                            }
                            return null;
                          }),
                          decoration: InputDecoration(
                              fillColor: white,
                              filled: true,
                              hintText: 'Write Password',
                              border: InputBorder.none,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 25, top: 11, right: 15),
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
                                  null)),
                        ),
                        TextFormField(
                          controller: cpassCtrl,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: _cobsecureText,
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return "Confirm your password";
                            }
                            return null;
                          }),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: white,
                              filled: true,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 25, top: 15, right: 15),
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
                            postData(nameCtrl.text, emailCtrl.text,
                                phoneCtrl.text, passCtrl.text, cpassCtrl.text);
                          }
                        }, 'Signup'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Get.to(() => const Reg());
                                },
                                child: mytext(
                                  data: 'Already Have Account? ',
                                  color: black2,
                                  fontSize: 16,
                                )),
                            custombtn1(() {
                              Get.to(() => const Login());
                            },
                                'Log In',
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
