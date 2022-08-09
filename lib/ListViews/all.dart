import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        ],
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
                                        content: Image.network(
                                            'https://images.unsplash.com/photo-1599566147214-ce487862ea4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGVyc29uJTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                                      );
                                    });
                              },
                              child: Image.network(
                                'https://images.unsplash.com/photo-1599566147214-ce487862ea4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGVyc29uJTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                fit: BoxFit.cover,
                              ))),
                      accountName: Text('Abhi'),
                      accountEmail: Text('abhi@gmail.com')),
                ],
              ),
            )),
      ),
    );
  }
}