import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String? dropdownValue;
//dropdown end------------------------------------------
//colors-----
const Color white = Color.fromARGB(220, 255, 249, 249);
const Color brown = Color.fromARGB(255, 187, 133, 113);
const Color black = Color.fromARGB(146, 97, 107, 4);
const Color green = Colors.green;
const Color red = Color.fromARGB(255, 189, 81, 73);
const Color black1 = Color.fromARGB(179, 54, 51, 51);
const Color red2 = Color.fromARGB(255, 248, 188, 177);
const Color red3 = Color.fromARGB(255, 252, 148, 129);
const Color white1 = Colors.white;
const Color transperant = Colors.transparent;
const Color slightOrange = Color.fromARGB(255, 253, 219, 173);
const Color slightOrange1 = Color.fromARGB(255, 250, 202, 139);
const Color slightOrange2 = Color.fromARGB(255, 109, 163, 112);
const Color black2 = Colors.black;
const Color red5 = Color.fromARGB(255, 233, 77, 66);
const Color green1 = Color.fromARGB(255, 228, 250, 129);
const Color blue2 = Colors.cyan;
const Color green3 = Color.fromARGB(255, 114, 68, 240);
const Color grey = Color.fromARGB(239, 143, 141, 141);
const Color grey1 = Color.fromARGB(255, 109, 108, 108);
const Color commoncolor = Color.fromRGBO(255, 239, 229, 1);
const Color grey2 = Color.fromRGBO(93, 93, 93, 1);
const Color white2 = Colors.white;
const Color appbar = Color.fromRGBO(255, 255, 255, 1);
const Color appbarSearch = Color.fromRGBO(243, 243, 243, 1);
const Color orange = Color.fromRGBO(237, 85, 0, 1);
const Color orange1 = Color.fromRGBO(250, 226, 212, 1);
const Color gradienttop = Color.fromRGBO(233, 233, 233, 1);
const Color gradientbottom = Color.fromRGBO(255, 200, 167, 1);
const Color red6 = Colors.red;
const Color black6 = Colors.black;
const Color white6 = Colors.white;
const Color white7 = Color.fromRGBO(255, 255, 255, 1);
const Color screenColor = Color.fromRGBO(255, 239, 229, 1);
const Color blue = Color.fromRGBO(3, 82, 201, 1);
const Color grey3 = Color.fromARGB(255, 228, 225, 225);
const Color orange2 = Color.fromRGBO(253, 221, 202, 1);
//buttons-----

SizedBox custombtn(Function()? onPressed, btntxt) {
  return SizedBox(
      height: 0.07.sh,
      width: 1.sw,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(brown),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
          onPressed: onPressed,
          child: Text(btntxt)));
}

SizedBox iconbtntext(Function()? onPressed, Widget icon, Widget label) {
  return SizedBox(
      child: TextButton.icon(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(commoncolor)),
          onPressed: onPressed,
          icon: icon,
          label: label));
}
