import 'dart:async';
import 'dart:io';
import 'package:ecommerce_website_logo3_8_22/Cart/cart.dart';
import 'package:ecommerce_website_logo3_8_22/Help/help.dart';
import 'package:ecommerce_website_logo3_8_22/Profile/profile.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ecommerce_website_logo3_8_22/bottomnav/home.dart';
import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int count = 0;
  StreamController<int> _streamController = StreamController();
  //--------------------------Image Pickeer start--------------------------
  File? image;
  Future pickImageCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    final T1 = File(image.path);
    setState(() {
      this.image = T1;
    });
  }

  Future pickImageGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final T2 = File(image.path);
    setState(() {
      this.image = T2;
    });
  }
// Image picker end----------------------------------------------

  int _SelectIndex = 0;
  List<Widget> _mywidget = [Home(), Cart(), Help(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          iconTheme: IconThemeData(color: black1),
          backgroundColor: white,
          title: Text('Logo', style: TextStyle(color: brown)),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: 0.37.sw,
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
            Stack(
              children: [
                IconButton(
                    onPressed: () {
                      Get.to(() => Cart());
                    },
                    icon: Icon(Icons.shopping_cart_outlined)),
                StreamBuilder<int>(
                    stream: _streamController.stream,
                    builder: ((context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          '${snapshot.data}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        );
                      } else {
                        return Text(
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
                                                icon: Icon(
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
                      accountName: Text(
                        'Abhi',
                        style: TextStyle(fontSize: 20),
                      ),
                      accountEmail: Text('abhi@gmail.com',
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
                                    child: Text('data')),
                                TextButton(
                                    onPressed: () {
                                      pickImageGallery();
                                    },
                                    child: Text('data'))
                              ],
                            ),
                          );
                        });
                  }, 'Change Profile'),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.logout,
                        color: red,
                      ),
                      label: Text(
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
          items: [
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
