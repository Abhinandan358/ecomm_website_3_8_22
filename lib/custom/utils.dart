import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//colors-----
const white = Color.fromARGB(220, 228, 222, 222);
const brown = Colors.brown;
const black = Color.fromARGB(146, 97, 107, 4);
const green = Colors.green;
const red = Colors.red;
const black1 = Colors.black;

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
