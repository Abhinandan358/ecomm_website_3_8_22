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
const Color custombtncolr1 = Color.fromRGBO(184, 67, 2, 1);
const Color loginsignup = Color.fromRGBO(249,193,161,1);
const Color login = Color.fromRGBO(255,224,205,1);
//buttons-----

SizedBox custombtn(Function()? onPressed, btntxt) {
  return SizedBox(
      height: 0.07.sh,
      width: 1.sw,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(custombtncolr1),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
          onPressed: onPressed,
          child: Text(btntxt)));
}

SizedBox iconbtntext(Function()? onPressed, Widget icon, Widget label,ButtonStyle? style,) {
  return SizedBox(
      child: TextButton.icon(
          style: style,
          onPressed: onPressed,
          icon: icon,
          label: label));
}

Text mytext(
{  required String data,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  FontWeight? fontWeight,
  double? letterSpacing,
  double? wordSpacing,
  TextDecoration? decoration,
  TextAlign? textAlign,}
) {
  return Text(
    data,
    textAlign: textAlign,
    style: TextStyle(
        color: color,
        backgroundColor: backgroundColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        decoration: decoration),
  );
}

IconButton myiconbutton(
  Function()? onPressed,
  Widget icon,
  double? iconSize,
  Color? color,
  ButtonStyle? style,
  bool? isSelected,
) {
  return IconButton(onPressed: onPressed, icon: icon);
}

Widget myicon(double? size, Color? color, IconData? icon) {
  return Icon(
    icon,
    size: size,
    color: color,
  );
}

SizedBox custombtn1(Function()? onPressed, btntxt,ButtonStyle? style,Color? color) {
  return SizedBox(
      height: 0.06.sh,
      width: 0.3.sw,
      child: ElevatedButton(
          style: style,
          onPressed: onPressed,
          child: Text(btntxt,style: TextStyle(color: color),)));
}
