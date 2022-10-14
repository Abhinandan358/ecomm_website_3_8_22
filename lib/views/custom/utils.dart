import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String? dropdownValue;
//dropdown end------------------------------------------
//colors-----
const Color appbar = Color.fromRGBO(255, 255, 255, 1);
const Color grey = Color.fromARGB(239, 143, 141, 141);
const Color transperant = Colors.transparent;
const Color green = Colors.green;
const Color appbarSearch = Color.fromRGBO(243, 243, 243, 1);
const Color gradienttop = Color.fromRGBO(233, 233, 233, 1);
const Color gradientbottom = Color.fromRGBO(255, 200, 167, 1);
const Color orange = Color.fromRGBO(237, 85, 0, 1);
const Color orange1 = Color.fromRGBO(250, 226, 212, 1);
const Color red6 = Colors.red;
const Color black6 = Colors.black;
const Color white = Color.fromARGB(220, 255, 249, 249);
const Color blue = Color.fromRGBO(43,75,253,1);
const Color login = Color.fromRGBO(255, 224, 205, 1);
const Color loginsignup = Color.fromRGBO(249, 193, 161, 1);
const Color slightOrange1 = Color.fromARGB(255, 250, 202, 139);
const Color custombtncolr1 = Color.fromRGBO(184, 67, 2, 1);
const Color commonback = Color.fromRGBO(255, 239, 229, 1);




//buttons-----

SizedBox custombtn({required Function()? onPressed, required btntxt,MaterialStateProperty<Color?>? overlayColor,}) {
  return SizedBox(
      height: 0.07.sh,
      width: 1.sw,
      child: ElevatedButton(
          style: ButtonStyle(
            overlayColor: overlayColor,
              backgroundColor: MaterialStateProperty.all(custombtncolr1),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
          onPressed: onPressed,
          child: Text(btntxt)));
}

SizedBox iconbtntext(
  Function()? onPressed,
  Widget icon,
  Widget label,
  ButtonStyle? style,
) {
  return SizedBox(
      child: TextButton.icon(
          style: style, onPressed: onPressed, icon: icon, label: label));
}

Text mytext({
  required String data,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  FontWeight? fontWeight,
  double? letterSpacing,
  double? wordSpacing,
  TextDecoration? decoration,
  TextAlign? textAlign,
}) {
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

SizedBox custombtn1(
    Function()? onPressed, btntxt, ButtonStyle? style, Color? color) {
  return SizedBox(
      height: 0.06.sh,
      width: 0.3.sw,
      child: ElevatedButton(
          style: style,
          onPressed: onPressed,
          child: Text(
            btntxt,
            style: TextStyle(color: color),
          )));
}

//-----------------------------Textformfield custom---------------------------

TextFormField mytextformfield({
  Key? key,
  TextEditingController? controller,
  String? initialValue,
  FocusNode? focusNode,
  InputDecoration? decoration,
  TextInputType? keyboardType,
  TextInputAction? textInputAction,
  TextStyle? style,
  void Function(String)? onChanged,
  String? Function(String?)? validator,
  void Function()? onTap,
  ScrollPhysics? scrollPhysics,
  double? cursorHeight,
  AutovalidateMode? autovalidateMode,
  bool obscureText = false,
  String? hintText,
  labelText,
  bool? isDense,
  Widget? suffixIcon,
  Widget? prefixIcon,
  Widget? prefix,
  Widget? suffix,
  InputBorder? focusedBorder,
  int? maxLength,
  EdgeInsetsGeometry? contentPadding,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? letterSpacing,
  double? wordSpacing,
}) {
  return TextFormField(
    maxLength: maxLength,
    key: key,
    controller: controller,
    initialValue: initialValue,
    focusNode: focusNode,
    decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        labelText: labelText,
        isDense: isDense,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        prefix: prefix,
        suffix: suffix,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.purple, width: 3),
        ),
        contentPadding: contentPadding,
        border: const OutlineInputBorder()),
    keyboardType: keyboardType,
    style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing),
    textInputAction: textInputAction,
    onChanged: onChanged,
    validator: validator,
    onTap: onTap,
    scrollPhysics: scrollPhysics,
    cursorHeight: cursorHeight,
    autovalidateMode: autovalidateMode,
    obscureText: obscureText,
  );
}


//--------------rich text-------------------

RichText myrichtxt({
  required InlineSpan text,
}) {
  return RichText(text: text);
}

//Textspan custom----------------------------------
TextSpan mytextspan({
  required String? text,
  List<InlineSpan>? children,
  TextStyle? style,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? letterSpacing,
  double? wordSpacing,
}) {
  return TextSpan(
      text: text,
      children: children,
      style: TextStyle(
          color: color ?? black6,
          backgroundColor: backgroundColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing));
}
