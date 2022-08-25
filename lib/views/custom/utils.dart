import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//colors-----
const Color white = Color.fromARGB(220, 255, 249, 249);
const Color brown = Colors.brown;
const Color black = Color.fromARGB(146, 97, 107, 4);
const Color green = Colors.green;
const Color red = Colors.red;
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

//buttons-----

custombtn(Function()? onPressed, btntxt) {
  return SizedBox(
      height: 0.07.sh,
      width: 1.sw,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
                colors: [white1, green3],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(transperant),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
            onPressed: onPressed,
            child: Text(btntxt)),
      ));
}