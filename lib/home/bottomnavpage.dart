import 'package:ecommerce_website_logo3_8_22/bottomnav/home.dart';
import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _SelectIndex = 0;
  List<Widget> _mywidget = [Home(), Text('1'), Text('2'), Text('3')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: black1),
        backgroundColor: white,
        title: Text('Logo', style: TextStyle(color: brown)),
        actions: [
          SizedBox(
            width: 0.4.sw,
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  isDense: true,
                  hintText: 'Search',
                  border: OutlineInputBorder(),
                  suffixIcon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.search))),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_checkout))
        ],
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 5,
          backgroundColor: white,
          currentIndex: _SelectIndex,
          selectedItemColor: red,
          type: BottomNavigationBarType.fixed,
          onTap: ((value) {
            _SelectIndex = value;
            setState(() {});
          }),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.help,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                label: '')
          ]),
      body: _mywidget[_SelectIndex],
    );
  }
}
