import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/home/bottomnavpage.dart';
import 'package:ecommerce_website_logo3_8_22/reg&login/forgotpass.dart';
import 'package:ecommerce_website_logo3_8_22/reg&login/reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      appBar: AppBar(
        title: Text('Ecommerce Website'),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => Reg());
              },
              icon: Icon(Icons.app_registration)),
          Text('Signup', style: TextStyle(color: black1))
        ],
      ),
      body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 0.50.sh,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('SignIn', style: TextStyle(fontSize: 30)),
                    TextFormField(
                      controller: emailCtrl,
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Please provide only your registered emailid";
                        }
                      }),
                      decoration: InputDecoration(
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
                      }),
                      decoration: InputDecoration(
                          hintText: 'Write Password',
                          border: OutlineInputBorder(),
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
                    custombtn(() {
                      if (formkey.currentState!.validate()) {
                        postData(emailCtrl.text, passCtrl.text);
                      }
                    }, 'Login'),
                    TextButton(
                        onPressed: () {Get.to(()=>Reg());},
                        child: Text('If You no account then go to SignUp')),
                    TextButton(onPressed: (){Get.to(()=>ForgotPass());}, child: Text('Forgot Password'))    
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
      print(result.body);
    }
    if (data['status'] == 'success') {
      var snackbar = SnackBar(
          backgroundColor: green, content: Text('Login Successfully Done'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      Get.to(() => BottomNavPage());
    } else {
      var snackbar = SnackBar(backgroundColor: red, content: Text(data['msg']));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
