import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black1),
        backgroundColor: white,
        title: Text('Logo',style: TextStyle(color: brown)),
       
        ),
    );
  }
}