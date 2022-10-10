import 'dart:async';
import 'dart:io';
import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/cart.dart';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/category.dart';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/home.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../bottomnav/help.dart';
import '../bottomnav/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int count = 0;
  bool switchList = true;
  final StreamController<int> _streamController = StreamController();
  //--------------------------Image Pickeer start--------------------------
  File? image;
  Future pickImageCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    // ignore: non_constant_identifier_names
    final T1 = File(image.path);
    setState(() {
      this.image = T1;
    });
  }

  Future pickImageGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    // ignore: non_constant_identifier_names
    final T2 = File(image.path);
    setState(() {
      this.image = T2;
    });
  }
// Image picker end----------------------------------------------

  // ignore: non_constant_identifier_names
  int _SelectIndex = 0;
  final List<Widget> _mywidget = [
    const Home(),
    const Category(),
    const Cart(),
    const Help(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          iconTheme: const IconThemeData(color: black1),
          backgroundColor: appbar,
          title: mytext('Logo', brown, null, null, null, null, null, null, null),
          actions: [
            Container(
              width: 0.37.sw,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                    isDense: true,
                    fillColor: appbarSearch,
                    filled: true,
                    suffixIcon: myiconbutton(
                        () {},
                        const Icon(
                          Icons.search,
                          color: grey2,
                          size: 25,
                        ),
                        null,
                        null,
                        null,
                        null)),
              ),
            ),
            Stack(
              children: [
                myiconbutton(() {
                  Get.to(() => const Cart());
                }, myicon(null, null, Icons.shopping_cart_outlined), null, null,
                    null, null),
                StreamBuilder<int>(
                    stream: _streamController.stream,
                    builder: ((context, snapshot) {
                      if (snapshot.hasData) {
                        return mytext('${snapshot.data}', null, null, 20,
                            FontWeight.bold, null, null, null, null);
                      } else {
                        return mytext('0', null, null, 20, FontWeight.bold,
                            null, null, null, null);
                      }
                    })),
              ],
            )
          ],
        ),
      ),
      drawer: SafeArea(
        child: SizedBox(
            height: 0.96.sh,
            child: Drawer(
              backgroundColor: commonback,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 1),
                      ),
                      child: ListTile(
                        leading: SizedBox(
                          height: 70,
                          width: 70,
                          child: ClipOval(
                            child: Image.network(
                              'https://media.istockphoto.com/photos/headshot-portrait-of-smiling-male-employee-in-office-picture-id1309328823?b=1&k=20&m=1309328823&s=170667a&w=0&h=a-f8vR5TDFnkMY5poQXfQhDSnK1iImIfgVTVpFZi_KU=',
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          'Jenny Wilson',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'abcdef@gmail.com',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text('+ 000 000 0000',
                                style: TextStyle(fontSize: 18))
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'My Profile',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color: orange,
                    ),
                    Text('My Account',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    Divider(
                      color: orange,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Notifications',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(
                            child: SizedBox(
                              height: 54,
                              width: 54,
                              child: CupertinoSwitch(
                                activeColor: blue,
                                  value: switchList,
                                  onChanged: (bool value) {
                                    setState(() {
                                      switchList = value;
                                    });
                                  }),
                            ),
                          )
                        ]),
                    Divider(
                      color: orange,
                    ),
                    Text('Terms & Conditions',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    Divider(
                      color: orange,
                    ),
                    Text('Privacy Policy',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            )),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          buttonBackgroundColor: red,
          backgroundColor: commonback,
          index: _SelectIndex,
          onTap: ((value) {
            _SelectIndex = value;
            setState(() {});
          }),
          items: [
            myicon(
              30,
              null,
              Icons.home_outlined,
            ),
            myicon(
              30,
              null,
              Icons.category_sharp,
            ),
            myicon(
              30,
              null,
              Icons.shopping_cart_outlined,
            ),
            myicon(
              30,
              null,
              Icons.help_outline,
            ),
            myicon(
              30,
              null,
              Icons.person_outline,
            )
          ]),
      body: _mywidget[_SelectIndex],
    );
  }
}
