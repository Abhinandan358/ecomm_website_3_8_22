// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

// ignore: duplicate_ignore
class _ForgotPassState extends State<ForgotPass> {
  var formkey = GlobalKey<FormState>();
  TextEditingController emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonback,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          iconTheme: const IconThemeData(color: black6),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                mytext(
                  data: 'Forgot Password',
                  fontSize: 30,
                  color: red6,
                  fontWeight: FontWeight.bold,
                ),
                mytext(
                    data:
                        ' Don\'t worry we will handle this situation, please put your registered email ID to continue ',
                    fontSize: 17,
                    textAlign: TextAlign.center),
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
                  height: 0.76.sh,
                  decoration: BoxDecoration(color: logins),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        mytextformfield(
                          controller: emailCtrl,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please provide your Email";
                            }
                            return null;
                          },
                          hintText: 'Email',
                          labelText: 'Email',
                          labelStyle: TextStyle(color: grey),
                          decoration: const InputDecoration(
                              fillColor: white,
                              filled: true,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 25, top: 15, right: 15)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        custombtn(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                postData(emailCtrl.text);
                              }
                            },
                            btntxt: 'SEND OTP')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

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
