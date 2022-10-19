// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/controller/fetch_country_controller.dart';
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
  String? dropdown;
  String? dropdown1;
  bool _obsecureText = true;
  bool _cobsecureText = true;
  TextEditingController fnameCtrl = TextEditingController();
  TextEditingController mnameCtrl = TextEditingController();
  TextEditingController lnameCtrl = TextEditingController();
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  TextEditingController cpassCtrl = TextEditingController();
  TextEditingController contactCtrl = TextEditingController();
  TextEditingController altcontactCtrl = TextEditingController();
  TextEditingController addressCtrl = TextEditingController();
  TextEditingController countryCtrl = TextEditingController();
  TextEditingController stateCtrl = TextEditingController();
  TextEditingController cityCtrl = TextEditingController();
  TextEditingController zipCtrl = TextEditingController();
  TextEditingController usertypeCtrl = TextEditingController();

  final FetchCountryController _countryController = Get.find();
  @override
  void initState() {
    super.initState();
    getPost();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: commonback,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: AppBar(
            iconTheme: const IconThemeData(color: black6),
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  mytext(
                      data: 'Register',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: red6),
                  mytext(
                    data: 'Access To Your Account',
                    fontSize: 18,
                  ),
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
                    height: 1280,
                    color: logins,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(height: 20),
                          mytextformfield(
                            controller: fnameCtrl,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please provide your name";
                              }
                              return null;
                            },
                            hintText: 'First Name',
                            labelText: 'First Name',
                            labelStyle: TextStyle(color: grey),
                            fillColor: white,
                            decoration: const InputDecoration(
                                fillColor: white,
                                filled: true,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 25, top: 15, right: 15)),
                          ),
                          mytextformfield(
                            controller: mnameCtrl,
                            hintText: 'Middle Name',
                            labelText: 'Middle Name',
                            labelStyle: TextStyle(color: grey),
                            fillColor: white,
                          ),
                          mytextformfield(
                            controller: lnameCtrl,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please provide your Last name";
                              }
                              return null;
                            },
                            hintText: 'Last Name',
                            labelText: 'Last Name',
                            labelStyle: TextStyle(color: grey),
                            fillColor: white,
                            decoration: const InputDecoration(
                                fillColor: white,
                                filled: true,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 25, top: 15, right: 15)),
                          ),
                          mytextformfield(
                            hintText: 'Company Name',
                            labelText: 'Company Name',
                            labelStyle: TextStyle(color: grey),
                            fillColor: white,
                            controller: usernameCtrl,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Plz provide Company Name";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                fillColor: white,
                                filled: true,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 25, top: 15, right: 15)),
                          ),
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
                              fillColor: white,
                              decoration: InputDecoration(
                                fillColor: white,
                                filled: true,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 25, top: 15, right: 15),
                              )),
                          mytextformfield(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            obscureText: _obsecureText,
                            controller: passCtrl,
                            validator: ((value) {
                              if (value!.isEmpty) {
                                return "give your password";
                              }
                              return null;
                            }),
                            suffixIcon: myiconbutton(
                              onPressed: () {
                                setState(() {
                                  _obsecureText = !_obsecureText;
                                });
                              },
                              icon: myicon(
                                  icon: _obsecureText
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                            ),
                            hintText: 'Write Password',
                            labelText: 'Password',
                            labelStyle: TextStyle(color: grey),
                            fillColor: white,
                            decoration: InputDecoration(
                              fillColor: white,
                              filled: true,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 25, top: 11, right: 15),
                            ),
                          ),
                          mytextformfield(
                            controller: cpassCtrl,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            obscureText: _cobsecureText,
                            validator: ((value) {
                              if (value!.isEmpty) {
                                return "Confirm your password";
                              }
                              return null;
                            }),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _cobsecureText = !_cobsecureText;
                                  });
                                },
                                icon: Icon(_cobsecureText
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            hintText: 'Confirm Password',
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(color: grey),
                            fillColor: white,
                            decoration: InputDecoration(
                              fillColor: white,
                              filled: true,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 25, top: 15, right: 15),
                            ),
                          ),
                          mytextformfield(
                            controller: contactCtrl,
                            keyboardType: TextInputType.phone,
                            maxLength: 10,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please provide your Phone Number";
                              } else if (value.length < 10) {
                                return "Atleast 10 digit required";
                              }
                              return null;
                            },
                            hintText: 'Contact Number',
                            labelText: 'Contact Number',
                            labelStyle: TextStyle(color: grey),
                            fillColor: white,
                            decoration: const InputDecoration(
                              counterText: "",
                              fillColor: white,
                              filled: true,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 25, top: 15, right: 15),
                            ),
                          ),
                          mytextformfield(
                            controller: altcontactCtrl,
                            hintText: 'Alternate Contact',
                            labelText: 'Alternate Number',
                            labelStyle: TextStyle(color: grey),
                            fillColor: white,
                          ),
                          mytextformfield(
                            hintText: 'Address',
                            labelText: 'Address',
                            labelStyle: TextStyle(color: grey),
                            fillColor: white,
                            controller: addressCtrl,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "write your adress";
                              }
                              return null;
                            },
                          ),
                          Container(
                            height: 0.07.sh,
                            decoration: BoxDecoration(
                                color: white, border: Border.all()),
                            child: DropdownButton(
                                value: dropdown1,
                                isExpanded: true,
                                focusColor: white,
                                underline: DropdownButtonHideUnderline(
                                    child: Container()),
                                icon: const SizedBox.shrink(),
                                hint: mytext(data: 'SELECT'),
                                items: [
                                  DropdownMenuItem(
                                      value: 'INDIA',
                                      child: mytext(data: 'INDIA')),
                                  DropdownMenuItem(
                                      value: 'AUSTRALIA',
                                      child: mytext(data: 'AUSTRALIA')),
                                  DropdownMenuItem(
                                      value: 'ENGLAND',
                                      child: mytext(data: 'ENGLAND')),
                                  DropdownMenuItem(
                                      value: 'WEST INDIES',
                                      child: mytext(data: 'WEST INDIES')),
                                  DropdownMenuItem(
                                      value: 'RUSSIA',
                                      child: mytext(data: 'RUSSIA')),
                                  DropdownMenuItem(
                                      value: 'NEPAL',
                                      child: mytext(data: 'NEPAL')),
                                  DropdownMenuItem(
                                      value: 'BHUTAN',
                                      child: mytext(data: 'BHUTAN')),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    dropdown1 = value as String;
                                  });
                                }),
                          ),
                          mytextformfield(
                            hintText: 'City',
                            labelText: 'City',
                            labelStyle: TextStyle(color: grey),
                            fillColor: white,
                            controller: stateCtrl,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "write your state";
                              }
                              return null;
                            },
                          ),
                          mytextformfield(
                              hintText: 'Zip Code',
                              labelText: 'Zip Code',
                              labelStyle: TextStyle(color: grey),
                              fillColor: white,
                              controller: zipCtrl,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Zip code provide';
                                }
                                return null;
                              }),
                          Container(
                            height: 0.07.sh,
                            decoration: BoxDecoration(
                                color: white, border: Border.all()),
                            child: DropdownButton(
                                value: dropdown,
                                isExpanded: true,
                                focusColor: white,
                                underline: DropdownButtonHideUnderline(
                                    child: Container()),
                                icon: const SizedBox.shrink(),
                                hint: mytext(data: 'SELECT'),
                                items: [
                                  DropdownMenuItem(
                                      value: 'vendor',
                                      child: mytext(data: 'Vendor')),
                                  DropdownMenuItem(
                                      value: 'buyer',
                                      child: mytext(data: 'Buyer')),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    dropdown = value as String;
                                  });
                                }),
                          ),
                          SizedBox(
                            height: 0.03.sh,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: custombtn(
                                onPressed: () {
                                  if (formkey.currentState!.validate()) {
                                    postData(
                                        fnameCtrl.text,
                                        mnameCtrl.text,
                                        lnameCtrl.text,
                                        usernameCtrl.text,
                                        emailCtrl.text,
                                        passCtrl.text,
                                        cpassCtrl.text,
                                        contactCtrl.text,
                                        altcontactCtrl.text,
                                        addressCtrl.text,
                                        countryCtrl.text,
                                        stateCtrl.text,
                                        cityCtrl.text,
                                        zipCtrl.text,
                                        usertypeCtrl.text);
                                  }
                                },
                                btntxt: 'SIGN UP',
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return Colors.blue;
                                  }
                                  return Colors.black;
                                })),
                          ),
                          SizedBox(height: 0.03.sh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Get.to(() => const Reg());
                                  },
                                  child: mytext(
                                    data: 'Already Have Account? ',
                                    color: black6,
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
      ),
    );
  }

  postData(
      String FirstName1,
      MiddleName1,
      LastName1,
      UserName1,
      Email1,
      Password1,
      ConfirmPassword1,
      Contact1,
      AltContact1,
      Address1,
      Country,
      State1,
      City1,
      ZipCode1,
      UserType1) async {
    String url = 'https://demo42.gowebbi.in/api/RegistrationApi/UserRegister';
    Map<String, dynamic> param = {
      "FirstName": fnameCtrl.text,
      "MiddleName": mnameCtrl.text,
      "LastName": lnameCtrl.text,
      "UserName": usernameCtrl.text,
      "Email": emailCtrl.text,
      "Password": passCtrl.text,
      "ConfirmPassword": cpassCtrl.text,
      "Contact": contactCtrl.text,
      "AltContact": altcontactCtrl.text,
      "Address": addressCtrl.text,
      "Country": countryCtrl.text,
      "State": stateCtrl.text,
      "City": cityCtrl.text,
      "ZipCode": zipCtrl.text,
      "UserType": usertypeCtrl.text
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
          backgroundColor: red6,
          textColor: Colors.white,
          fontSize: 16.0);
      Get.to(() => const DashBoardPage());
    } else {
      Fluttertoast.showToast(
          msg: data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: red6,
          textColor: Colors.white,
          fontSize: 16.0);
      Get.to(() => const DashBoardPage());
    }
  }
  void getPost() async {
    await _countryController.getPost();
    setState(() {});
  }
}
