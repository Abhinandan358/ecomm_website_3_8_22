// ignore_for_file: non_constant_identifier_names
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/reg&login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
  TextEditingController lnameCtrl = TextEditingController();
  TextEditingController companyCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  TextEditingController cpassCtrl = TextEditingController();
  TextEditingController addressCtrl = TextEditingController();
  TextEditingController stateCtrl = TextEditingController();
  TextEditingController zipCtrl = TextEditingController();
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: mytext(
                          data: 'Register',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: red6)),
                  Align(
                    alignment: Alignment.topLeft,
                    child: mytext(
                      data: 'Access To Your Account',
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: mytextspan(
                              text: 'FIRST NAME',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              children: [
                            mytextspan(
                                text: '*',
                                color: red6,
                                fontWeight: FontWeight.bold)
                          ]))),
                  mytextformfield(
                    controller: fnameCtrl,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please provide your name";
                      }
                      return null;
                    },
                    hintText: 'First Name',
                    decoration: const InputDecoration(
                        fillColor: white,
                        filled: true,
                        border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 25, top: 15, right: 15)),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: mytextspan(
                        text: 'MIDDLE NAME',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ))),
                  mytextformfield(hintText: 'Middle Name'),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: mytextspan(
                              text: 'LAST NAME',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              children: [
                            mytextspan(
                                text: '*',
                                color: red6,
                                fontWeight: FontWeight.bold)
                          ]))),
                  mytextformfield(
                    controller: lnameCtrl,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please provide your Last name";
                      }
                      return null;
                    },
                    hintText: 'Last Name',
                    decoration: const InputDecoration(
                        fillColor: white,
                        filled: true,
                        border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 25, top: 15, right: 15)),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: mytextspan(
                              text: 'COMPANY NAME',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              children: [
                            mytextspan(
                                text: '*',
                                color: red6,
                                fontWeight: FontWeight.bold)
                          ]))),
                  mytextformfield(
                    hintText: 'Company Name',
                    controller: companyCtrl,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Plz provide Company Name";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        fillColor: white,
                        filled: true,
                        border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 25, top: 15, right: 15)),
                  ),
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
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: emailCtrl,
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Please provide only your registered emailid";
                        }
                        return null;
                      }),
                      hintText: 'Write Email',
                      decoration: InputDecoration(
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
                              text: 'CONFIRM PASSWORD',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              children: [
                            mytextspan(
                                text: '*',
                                color: red6,
                                fontWeight: FontWeight.bold)
                          ]))),
                  mytextformfield(
                    controller: cpassCtrl,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
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
                    decoration: InputDecoration(
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
                  Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: mytextspan(
                              text: 'CONTACT',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              children: [
                            mytextspan(
                                text: '*',
                                color: red6,
                                fontWeight: FontWeight.bold)
                          ]))),
                  mytextformfield(
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
                    hintText: 'Contact Number',
                    decoration: const InputDecoration(
                      counterText: "",
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
                  Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: mytextspan(
                        text: 'ALTERNATE CONTACT',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ))),
                  mytextformfield(hintText: 'Alternate Contact'),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: mytextspan(
                              text: 'ADDRESS',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              children: [
                            mytextspan(
                                text: '*',
                                color: red6,
                                fontWeight: FontWeight.bold)
                          ]))),
                  mytextformfield(
                    hintText: 'Address',
                    controller: addressCtrl,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "write your adress";
                      }
                      return null;
                    },
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: mytextspan(
                              text: 'COUNTRY',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              children: [
                            mytextspan(
                                text: '*',
                                color: red6,
                                fontWeight: FontWeight.bold)
                          ]))),
                  Container(
                    height: 0.07.sh,
                    decoration:
                        BoxDecoration(color: white, border: Border.all()),
                    child: DropdownButton(
                        value: dropdown1,
                        isExpanded: true,
                        focusColor: white,
                        underline:
                            DropdownButtonHideUnderline(child: Container()),
                        icon: const SizedBox.shrink(),
                        hint: mytext(data: 'SELECT'),
                        items: [
                          DropdownMenuItem(
                              value: 'INDIA', child: mytext(data: 'INDIA')),
                          DropdownMenuItem(
                              value: 'AUSTRALIA',
                              child: mytext(data: 'AUSTRALIA')),
                          DropdownMenuItem(
                              value: 'ENGLAND', child: mytext(data: 'ENGLAND')),
                          DropdownMenuItem(
                              value: 'WEST INDIES',
                              child: mytext(data: 'WEST INDIES')),
                          DropdownMenuItem(
                              value: 'RUSSIA', child: mytext(data: 'RUSSIA')),
                          DropdownMenuItem(
                              value: 'NEPAL', child: mytext(data: 'NEPAL')),
                          DropdownMenuItem(
                              value: 'BHUTAN', child: mytext(data: 'BHUTAN')),
                        ],
                        onChanged: (value) {
                          setState(() {
                            dropdown1 = value as String;
                          });
                        }),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: mytextspan(
                              text: 'STATE',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              children: [
                            mytextspan(
                                text: '*',
                                color: red6,
                                fontWeight: FontWeight.bold)
                          ]))),
                  mytextformfield(
                    hintText: 'City',
                    controller: stateCtrl,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "write your state";
                      }
                      return null;
                    },
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: mytextspan(
                              text: 'ZIP CODE',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              children: [
                            mytextspan(
                                text: '*',
                                color: red6,
                                fontWeight: FontWeight.bold)
                          ]))),
                  mytextformfield(
                      hintText: 'Zip Code',
                      controller: zipCtrl,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Zip code provide';
                        }
                        return null;
                      }),
                  Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: mytextspan(
                              text: 'REGISTER AS',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              children: [
                            mytextspan(
                                text: '*',
                                color: red6,
                                fontWeight: FontWeight.bold)
                          ]))),
                  Container(
                    height: 0.07.sh,
                    decoration:
                        BoxDecoration(color: white, border: Border.all()),
                    child: DropdownButton(
                        value: dropdown,
                        isExpanded: true,
                        focusColor: white,
                        underline:
                            DropdownButtonHideUnderline(child: Container()),
                        icon: const SizedBox.shrink(),
                        hint: mytext(data: 'SELECT'),
                        items: [
                          DropdownMenuItem(
                              value: 'vendor', child: mytext(data: 'Vendor')),
                          DropdownMenuItem(
                              value: 'buyer', child: mytext(data: 'Buyer')),
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
                    child: custombtn(onPressed: (){}, btntxt: 'SIGN UP',
                    overlayColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states){
                      if(states.contains(MaterialState.hovered)) {
                        return Colors.blue;
                      }
                      return Colors.black;
                    })
                    ),
                  ),
                  SizedBox(height:0.03.sh),
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
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: black6))),
                              backgroundColor:
                                  MaterialStateProperty.all(login)),
                          black6)
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
//   postData(String Name1, Email1, PhoneNo1, Password1, ConfirmPassword1) async {
//     String url = 'https://demo50.gowebbi.us/api/RegisterApi/UserRegister';
//     Map<String, dynamic> param = {
//       "Name": nameCtrl.text,
//       "Email": emailCtrl.text,
//       "PhoneNo": phoneCtrl.text,
//       "Password": passCtrl.text,
//       "ConfirmPassword": cpassCtrl.text
//     };
//     var result = await post(Uri.parse(url), body: param);
//     var data = jsonDecode(result.body);
//     if (result.statusCode == 200) {
//       // ignore: avoid_print
//       print(result.body);
//     }
//     if (data['status'] == 'success') {
//       Fluttertoast.showToast(
//           msg: "Login Succesfull",
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 1,
//           backgroundColor: red6,
//           textColor: Colors.white,
//           fontSize: 16.0);
//       Get.to(() => const DashBoardPage());
//     } else {
//       Fluttertoast.showToast(
//           msg: data['msg'],
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 1,
//           backgroundColor: red6,
//           textColor: Colors.white,
//           fontSize: 16.0);
//       Get.to(() => const DashBoardPage());
//     }
//   }
// }
