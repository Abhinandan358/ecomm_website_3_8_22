import 'dart:async';
import 'dart:io';

import 'package:ecommerce_website_logo3_8_22/views/bottomnav/cart.dart';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/home.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:image_picker/image_picker.dart';

import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../bottomnav/help.dart';
import '../bottomnav/profile.dart';

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
          backgroundColor: white,
          title: const Text('Logo', style: TextStyle(color: brown)),
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 0.37.sw,
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                    isDense: true,
                    hintText: 'Search',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search))),
              ),
            ),
            Stack(
              children: [
                IconButton(
                    onPressed: () {
                      Get.to(() => const Cart());
                    },
                    icon: const Icon(Icons.shopping_cart_outlined)),
                StreamBuilder<int>(
                    stream: _streamController.stream,
                    builder: ((context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          '${snapshot.data}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        );
                      } else {
                        return const Text(
                          '0',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        );
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
                                            child: IconButton(
                                                onPressed: () {
                                                  Get.back();
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: white1,
                                                ))),
                                        content: image != null
                                            ? Image.file(
                                                image!,
                                                fit: BoxFit.cover,
                                              )
                                            : IconButton(
                                                onPressed: () {},
                                                icon: ClipOval(
                                                    child: Image.network(
                                                        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                                        fit: BoxFit.cover))),
                                      );
                                    });
                              },
                              child: image != null
                                  ? Image.file(
                                      image!,
                                      fit: BoxFit.cover,
                                    )
                                  : IconButton(
                                      onPressed: () {},
                                      icon: InkWell(
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
                                                        : IconButton(
                                                            onPressed: () {},
                                                            icon: ClipOval(
                                                                child: Image
                                                                    .network(
                                                              'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                                              fit: BoxFit.cover,
                                                            ))),
                                                  );
                                                });
                                          },
                                          child: ClipOval(
                                              child: Image.network(
                                                  'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                                  fit: BoxFit.cover)))))),
                      accountName: const Text(
                        'Abhi',
                        style: TextStyle(fontSize: 20),
                      ),
                      accountEmail: const Text('abhi@gmail.com',
                          style: TextStyle(fontSize: 20))),
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
                                    child: const Text('data')),
                                TextButton(
                                    onPressed: () {
                                      pickImageGallery();
                                    },
                                    child: const Text('data'))
                              ],
                            ),
                          );
                        });
                  }, 'Change Profile'),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.logout,
                        color: red,
                      ),
                      label: const Text(
                        'Logout',
                        style: TextStyle(color: red),
                      ))
                ],
              ),
            )),
      ),
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
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.help_outline,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                ),
                label: '')
          ]),
      body: _mywidget[_SelectIndex],
    );
  }
}