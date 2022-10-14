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
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black6),
        elevation: 0,
        backgroundColor: commonback,
      ),
      body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                mytext(
                  data: 'Forgot Password',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                mytext(
                    data:
                        ' Don\'t worry we will handle this situation, please put your registered email ID to continue ',
                    fontSize: 18,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 0.76.sh,
                  decoration: BoxDecoration(color: login),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20, right: 20 ),
                    child: Column(
                      children: [
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
                        SizedBox(
                          height: 20,
                        ),
                        custombtn(() {
                          if (formkey.currentState!.validate()) {
                            postData(emailCtrl.text);
                          }
                        }, 'SEND OTP'),
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
