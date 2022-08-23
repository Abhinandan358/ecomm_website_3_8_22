import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  var formkey = GlobalKey<FormState>();
  TextEditingController emailCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: black1),
          elevation: 0,
          backgroundColor: white,
          title: const Text('Forgot Password', style: TextStyle(color: brown))),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [white1, green3],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    controller: emailCtrl,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return "Write only Registered EmailId";
                      }
                      return null;
                    }),
                    decoration: const InputDecoration(
                      labelText: 'Registered Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  custombtn(() {
                    postData(emailCtrl.text);
                  }, 'Get OTP')
                ],
              )),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  postData(String Email1) async {
    String url = 'https://demo50.gowebbi.us/api/RegisterApi/ForgetPassword';
    Map<String, dynamic> param = {"Email": emailCtrl.text};
    var result = await post(Uri.parse(url), body: param);
    var data = jsonDecode(result.body);
    if (result.statusCode == 200) {
      // ignore: avoid_print
      print(result.body);
    }
    if (data['status'] == 'success') {
      Fluttertoast.showToast(
          msg: "Message Send To Your Mail",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      
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
