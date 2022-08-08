import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//colors-----
const white = Color.fromARGB(220, 228, 222, 222);
const brown = Colors.brown;
const black = Color.fromARGB(146, 97, 107, 4);
const green = Colors.green;
const red = Colors.red;
const black1 = Color.fromARGB(179, 54, 51, 51);
const red2 = Color.fromARGB(255, 248, 188, 177);
const red3 = Color.fromARGB(255, 252, 148, 129);
const white1 = Colors.white;
const transperant = Colors.transparent;
const slightOrange = Color.fromARGB(255, 253, 219, 173);
const slightOrange1 = Color.fromARGB(255, 250, 202, 139);

//buttons-----

custombtn(Function()? onPressed, btntxt) {
  return SizedBox(
      height: 0.07.sh,
      width: 1.sw,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(black),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
          onPressed: onPressed,
          child: Text(btntxt)));
}
