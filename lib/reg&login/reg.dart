import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/home/bottomnavpage.dart';
import 'package:ecommerce_website_logo3_8_22/reg&login/login.dart';
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
      appBar: AppBar(
        iconTheme: IconThemeData(color: black1),
        elevation: 0,
        backgroundColor: white,
        title: Text('Ecommerce Website', style: TextStyle(color: brown)),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => Login());
              },
              icon: Icon(Icons.login)),
          Text(
            'Login',
            style: TextStyle(color: black1),
          )
        ],
      ),
      body: Form(
          key: formkey,
          child: Container(
             decoration: BoxDecoration(
                gradient: LinearGradient(colors: [white1,green3],begin: Alignment.topCenter,end: Alignment.bottomCenter)
              ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 0.87.sh,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Registration', style: TextStyle(fontSize: 30)),
                      TextFormField(
                        controller: nameCtrl,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please provide your name";
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Write Name', border: OutlineInputBorder()),
                      ),
                      TextFormField(
                        controller: emailCtrl,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please provide your Email";
                          }
                        },
                        decoration: InputDecoration(
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
                        },
                        decoration: InputDecoration(
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
                              border: OutlineInputBorder())),
                      TextFormField(
                        controller: cpassCtrl,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: _cobsecureText,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
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
                          CupertinoActivityIndicator(
                            color: green,
                          );
                        }
                      }, 'SignUp'),
                      TextButton(onPressed: (){Get.to(()=>Login());}, child: Text('If you have already an account go to Login',style: TextStyle(color: white1),)),
                      TextButton(onPressed: (){Get.to(()=>BottomNavPage());}, child: Text('Skip',style: TextStyle(color: white1),))
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }

  postData(
      String Name1, Email1, PhoneNumber, Password1, confirmPassword) async {
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
      print(result.body);
    }
    if (data["status"] == "success") {
     Fluttertoast.showToast(
          msg: "Registration succesfull",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      Get.to(() => Login());
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
