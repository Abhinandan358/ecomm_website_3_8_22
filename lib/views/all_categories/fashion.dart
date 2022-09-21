import 'dart:async';

import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/cart.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Fashion extends StatefulWidget {
  const Fashion({Key? key}) : super(key: key);

  @override
  State<Fashion> createState() => _FashionState();
}

class _FashionState extends State<Fashion> {
  bool switchList = true;
  final StreamController<int> _streamController = StreamController();
  static final List<FashionModel> _list = [
    FashionModel('assets/1.png', 'Men'),
    FashionModel('assets/2.png', 'Women'),
    FashionModel('assets/3.png', 'kids'),
    FashionModel('assets/5.png', 'view Together')
  ];

  static final List<OffersForyouModel> _offerforyouList = [
    OffersForyouModel(
        'assets/saree1.png', 'Women’s Sarees', 'buy 3 get 10% off'),
    OffersForyouModel('assets/watch1.png', 'Smartwatches', 'min. 40% off'),
    OffersForyouModel('assets/shoe1.png', 'Shoes', 'Under ₹ 499'),
    OffersForyouModel('assets/lt.png', 'Ladies T-Shirt', 'buy 2 get 1 free'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: commonback,
        appBar: AppBar(
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
                }, myicon(null, null, Icons.shopping_cart_outlined), null, null,
                    null, null),
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
                          decoration: const BoxDecoration(
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
                            title: const Text(
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
                        const Text(
                          'My Profile',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const Divider(
                          color: orange,
                        ),
                        const Text('My Account',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        const Divider(
                          color: orange,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text('Notifications',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
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
                ))),
        body: SingleChildScrollView(
            physics:
                const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    iconbtntext(
                        () {},
                        myicon(
                          null,
                          black6,
                          Icons.arrow_back,
                        ),
                        mytext('Fashion', black6, null, null, FontWeight.bold,
                            null, null, null)),
                    SizedBox(
                      height: 0.18.sh,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: _list.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(10),
                              child: CircleAvatar(
                                backgroundColor: orange2,
                                radius: 40,
                                child: Image.asset(
                                  _list[index].img,
                                  height: 0.1.sh,
                                  // width: 0.2.sw,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }),
                    ),
                    Container(
                      color: grey3,
                      child: Column(
                        children: [
                          Image.asset(
                              'assets/mana-akbarzadegan-Y0RB2z12F1A-unsplash (1) 1.png'),
                          Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('assets/new 1.png')),
                          SizedBox(
                            width: 0.96.sw,
                            child: Container(
                              color: white6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  mytext('sports shoes, sneakers...', null,
                                      null, 18, null, null, null, null),
                                  mytext('up to 40% off', null, null, 20,
                                      FontWeight.bold, null, null, null)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mytext('Favourite To All!', orange, null, 20,
                            FontWeight.bold, null, null, null),
                        iconbtntext(
                            () {},
                            mytext('View All', black2, null, 18, null, null,
                                null, null),
                            myicon(
                              null,
                              black2,
                              Icons.arrow_forward_ios_outlined,
                            ))
                      ],
                    ),
                    SizedBox(
                      child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _offerforyouList.length,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                            childAspectRatio: 0.99,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(20),
                              color: white7,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    _offerforyouList[index].img,
                                    height: 0.13.sh,
                                    width: 0.29.sw,
                                    fit: BoxFit.fill,
                                  ),
                                  mytext(_offerforyouList[index].name, grey2,
                                      null, 15, null, null, null, null),
                                  mytext(_offerforyouList[index].uptooff, green,
                                      null, 17, null, null, null, null)
                                ],
                              ),
                            );
                          }),
                    ),
                    Stack(children: [
                      Image.network(
                          'https://media.istockphoto.com/photos/beautiful-child-a-girl-in-a-white-dress-with-a-wreath-of-daisies-on-picture-id1207034841?b=1&k=20&m=1207034841&s=170667a&w=0&h=BNXvQfBFF21KTVeRKMKTG8ZQ-Fk0U8ZqRaPg1gfLId0='),
                      Positioned(
                          bottom: 30,
                          child: mytext('Little Girls Dresses', white6, null,
                              20, FontWeight.bold, null, null, null)),
                      Positioned(
                          bottom: 0,
                          child: mytext(
                              'Bright color to make your little bright',
                              commonback,
                              null,
                              19,
                              null,
                              null,
                              null,
                              null)),
                    ]),
                  ],
                ),
              ),
            )));
  }
}

class FashionModel {
  final String img, name;

  FashionModel(this.img, this.name);
}

class OffersForyouModel {
  final String img, name, uptooff;

  OffersForyouModel(this.img, this.name, this.uptooff);
}
