import 'dart:async';
import 'dart:io';

import 'package:ecommerce_website_logo3_8_22/views/bottomnav/cart.dart';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/category.dart';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/home.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../bottomnav/help.dart';
import '../bottomnav/profile.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage>
    with TickerProviderStateMixin {
  int count = 0;
  bool switchList = true;
  late TabController tabController;
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
  final List<Widget> _mywidget = [
    const Home(),
    const Category(),
    const Cart(),
    const Help(),
    const Profile()
  ];
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CustomAppBar(
            title: Align(
              alignment: Alignment.topLeft,
              child: mytext(
                data: 'Logo',
                color: custombtncolr1,
              ),
            ),
            backgroundColor: appbar,
            iconTheme: const IconThemeData(color: black6),
            actions: [
              Container(
                width: 0.37.sw,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: mytextformfield(
                    keyboardType: TextInputType.multiline,
                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                    isDense: true,
                    fillColor: appbarSearch,
                    filled: true,
                    suffixIcon: myiconbutton(
                      onPressed: () {},
                      icon: myicon(icon: Icons.search, size: 20, color: black6),
                    )),
              ),
              myiconbutton(
                  onPressed: () {},
                  icon: myicon(icon: Icons.shopping_cart_outlined))
            ]),
      ),
      drawer: SafeArea(
        child: SizedBox(
            height: 0.96.sh,
            child: Drawer(
              backgroundColor: commonback,
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
                          Text('+ 000 000 0000', style: TextStyle(fontSize: 18))
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'My Profile',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: orange,
                  ),
                  Text('My Account',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
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
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Divider(
                    color: orange,
                  ),
                  Text('Privacy Policy',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ],
              ),
            )),
      ),
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight,
        child: BottomAppBar(
          child: TabBar(
              onTap: (index) {
                setState(() {});
              },
              indicator: UnderlineTabIndicator(
                  insets: EdgeInsets.fromLTRB(5, 55, 5, 55),
                  borderSide: BorderSide(color: custombtncolr1, width: 3)),
              labelColor: red6,
              unselectedLabelColor: grey,
              controller: tabController,
              tabs: const [
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 1),
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 1),
                  icon: Icon(
                    Icons.category_outlined,
                  ),
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 1),
                  icon: Icon(Icons.shopping_cart_outlined),
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 1),
                  icon: Icon(Icons.help_outline),
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 1),
                  icon: Icon(Icons.person_outline),
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ]),
        ),
      ),
      body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: tabController,
          children: _mywidget),
    );
  }
}
