import 'dart:async';
import 'dart:io';
import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/cart.dart';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/category.dart';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/home.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
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
          title: mytext('Logo', brown, null, null, null, null, null, null),
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
                }, myicon(null, null, Icons.shopping_cart_outlined), null, null, null, null),
                StreamBuilder<int>(
                    stream: _streamController.stream,
                    builder: ((context, snapshot) {
                      if (snapshot.hasData) {
                        return mytext('${snapshot.data}', null, null, 20,
                            FontWeight.bold, null, null, null);
                      } else {
                        return mytext('0', null, null, 20, FontWeight.bold,
                            null, null, null);
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
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: ClipOval(
                          child: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor: transperant,
                                        title: Align(
                                            alignment: Alignment.topRight,
                                            child: myiconbutton(() {
                                              Get.back();
                                            },
                                                myicon(null, white1,  Icons.close),
                                                null,
                                                null,
                                                null,
                                                null)),
                                        content: image != null
                                            ? Image.file(
                                                image!,
                                                fit: BoxFit.cover,
                                              )
                                            : myiconbutton(
                                                () {},
                                                ClipOval(
                                                    child: Image.network(
                                                        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                                        fit: BoxFit.cover)),
                                                null,
                                                null,
                                                null,
                                                null),
                                      );
                                    });
                              },
                              child: image != null
                                  ? Image.file(
                                      image!,
                                      fit: BoxFit.cover,
                                    )
                                  : myiconbutton(
                                      () {},
                                      InkWell(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    content: image != null
                                                        ? Image.file(
                                                            image!,
                                                            fit: BoxFit.cover,
                                                          )
                                                        : myiconbutton(
                                                            () {},
                                                            ClipOval(
                                                                child: Image.network(
                                                                    'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                                                    fit: BoxFit
                                                                        .cover)),
                                                            null,
                                                            null,
                                                            null,
                                                            null),
                                                  );
                                                });
                                          },
                                          child: ClipOval(
                                              child: Image.network(
                                                  'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                                  fit: BoxFit.cover))),
                                      null,
                                      null,
                                      null,
                                      null))),
                      accountName: mytext(
                          'Abhi', null, null, 20, null, null, null, null),
                      accountEmail: mytext('abhi@gmail.com', null, null, 20,
                          null, null, null, null)),
                  custombtn(() {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Column(
                              children: [
                                TextButton(
                                    onPressed: () {
                                      pickImageCamera();
                                    },
                                    child: mytext('data', null, null, null,
                                        null, null, null, null)),
                                TextButton(
                                    onPressed: () {
                                      pickImageGallery();
                                    },
                                    child: mytext('data', null, null, null,
                                        null, null, null, null))
                              ],
                            ),
                          );
                        });
                  }, 'Change Profile'),
                  TextButton.icon(
                      onPressed: () {},
                      icon: myicon(20, red, Icons.logout),
                      label: mytext(
                          'Logout', red, null, null, null, null, null, null))
                ],
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
