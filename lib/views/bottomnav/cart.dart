import 'dart:ui';

import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  // ignore: non_constant_identifier_names
  static final List<MycartModel> _MycartList = [
    for (var i = 0; i < 6; i++)
      MycartModel('assets/shoe2.png', 'Casual Shoes', 'size : M, white',
          'delivery by sun sep 10 | ₹50', 'Only 5 Left')
  ];
  String? dropdownValue;
//dropdown end------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonback,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                color: white2,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Text(
                        'Deliver to : ',
                        style: TextStyle(fontSize: 18),
                      ),
                      title: const Text(
                        'Customer Name',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_vert)),
                    ),
                    const ListTile(
                      leading: Text(
                        'Address : ',
                        style: TextStyle(fontSize: 18),
                      ),
                      title: Text(
                        'Customer’s Full Address',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: ListView.builder(
                    itemExtent: 200.0,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: _MycartList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(2),
                        color: white2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ListTile(
                              leading: Image.asset(_MycartList[index].img),
                              title: const Text(
                                'Casuel Shoes',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _MycartList[index].size,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  RatingBar.builder(
                                    itemSize: 15,
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '₹1499',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        '₹499',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(_MycartList[index].deltime),
                                ],
                              ),
                              trailing: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      width: 100,
                                      color: screenColor,
                                      child: Center(
                                          child: Text(
                                        'Save Later',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ))),
                                      SizedBox(height: 5,),
                                  Container(
                                      width: 100,
                                      color: screenColor,
                                      child: Center(
                                          child: Text(
                                        'Remove',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ))),
                                  Container(
                                      width: 100,
                                      color: screenColor,
                                      child: Center(
                                          child: Text(
                                        'Buy Now',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ))),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: DropdownButton(
                                  value: dropdownValue,
                                  hint: const Text('Qty: 1',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 5, 4, 4))),
                                  items: const [
                                    DropdownMenuItem(
                                        child: Text(
                                          'Qty: 1',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromARGB(255, 5, 4, 4)),
                                        ),
                                        value: 'first'),
                                    DropdownMenuItem(
                                        child: Text('Second',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 5, 4, 4))),
                                        value: 'second'),
                                    DropdownMenuItem(
                                        child: Text('Third',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 5, 4, 4))),
                                        value: 'third'),
                                    DropdownMenuItem(
                                        child: Text('Fourth',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 5, 4, 4))),
                                        value: 'fourth'),
                                    DropdownMenuItem(
                                        child: Text('Fifth',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 5, 4, 4))),
                                        value: 'fifth'),
                                    DropdownMenuItem(
                                        child: Text('Sixth',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 5, 4, 4))),
                                        value: 'sixth'),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      dropdownValue = value as String;
                                    });
                                  }),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(_MycartList[index].pleft,style: TextStyle(color: red6,fontWeight: FontWeight.bold),))
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class MycartModel {
  final String img, pname, size, deltime, pleft;

  MycartModel(this.img, this.pname, this.size, this.deltime, this.pleft);
}
