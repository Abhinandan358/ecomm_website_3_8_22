import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';
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
      appBar: AppBar(title: Text('Forgot Password')),
      body: Padding(
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
                  if(value!.isEmpty){
                    return "Write only Registered EmailId";
                  }
                }),
                decoration: InputDecoration(
                  labelText: 'Registered Email',
                  border: OutlineInputBorder(),
                ),
              ),
              custombtn((){
                postData(emailCtrl.text);
              }, 'Get OTP')
            ],
          )),
      ),
    );
  }
  postData(String Email1)async{
    String url = 'https://demo50.gowebbi.us/api/RegisterApi/ForgetPassword';
    Map<String,dynamic> param = {
      "Email":emailCtrl.text
    };
    var result = await post(Uri.parse(url),body: param);
    var data = jsonDecode(result.body);
    if(result.statusCode==200){
      print(result.body);
    }
    if(data['status']=='success'){
      var snackbar = SnackBar(content: Text('OTP send'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }else{
      var snackbar = SnackBar(content: Text(data['msg']));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}