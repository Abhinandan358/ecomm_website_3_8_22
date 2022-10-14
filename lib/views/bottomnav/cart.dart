
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
          'delivery by\nsun sep 10 | ₹50', 'Only 5 Left')
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
                color: white,
                child: Column(
                  children: [
                    ListTile(
                      leading: mytext(
                        data: 'Deliver to : ',
                        fontSize: 18,
                      ),
                      title: mytext(
                        data: 'Customer Name',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      trailing: myiconbutton(() {
                        showMenu(
                          context: context,
                          position: const RelativeRect.fromLTRB(
                              50.0, 100.0, 20.0, 0.0),
                          items: [
                            const PopupMenuItem<String>(
                                value: '1',
                                child: Text(
                                  'Edit',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                            const PopupMenuItem<String>(
                                value: '2',
                                child: Text('Remove',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ],
                          elevation: 8.0,
                        );
                      }, myicon(null, null, Icons.more_vert), null, null, null,
                          null),
                    ),
                    ListTile(
                      leading: mytext(
                        data: 'Address : ',
                        fontSize: 18,
                      ),
                      title: mytext(
                        data: 'Customer’s Full Address',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
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
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        color: white,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: myiconbutton(() {
                                                      Get.back();
                                                    },
                                                        myicon(null, null,
                                                            Icons.close),
                                                        null,
                                                        null,
                                                        null,
                                                        null)),
                                                Image.asset(
                                                  _MycartList[index].img,
                                                  height: 0.35.sh,
                                                  width: 0.6.sw,
                                                  fit: BoxFit.cover,
                                                ),
                                                mytext(
                                                  data:
                                                      _MycartList[index].pname,
                                                ),
                                                // SizedBox(
                                                //   width: 0.85.sw,
                                                //   child: ElevatedButton(
                                                //       onPressed: () {},
                                                //       style: ButtonStyle(
                                                //           backgroundColor:
                                                //               MaterialStateProperty
                                                //                   .all(white2)),
                                                //       child: mytext(
                                                //         data:
                                                //             'More About Product',
                                                //         color: blue,
                                                //       )),
                                                // )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  child: Image.asset(
                                    _MycartList[index].img,
                                  ),
                                ),
                                DropdownButton(
                                    isDense: true,
                                    icon: myicon(
                                        null, null, Icons.keyboard_arrow_down),
                                    isExpanded: false,
                                    value: dropdownValue,
                                    hint: mytext(
                                      data: 'Qty:1',
                                      color: const Color.fromARGB(255, 5, 4, 4),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    items: [
                                      DropdownMenuItem(
                                        value: 'first',
                                        child: mytext(
                                          data: 'Qty:1',
                                          color: const Color.fromARGB(
                                              255, 5, 4, 4),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: 'second',
                                        child: mytext(
                                          data: 'Qty:2',
                                          color: const Color.fromARGB(
                                              255, 5, 4, 4),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: 'third',
                                        child: mytext(
                                          data: 'Qty:3',
                                          color: const Color.fromARGB(
                                              255, 5, 4, 4),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: 'fourth',
                                        child: mytext(
                                          data: 'Qty:4',
                                          color: const Color.fromARGB(
                                              255, 5, 4, 4),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: 'fifth',
                                        child: mytext(
                                          data: 'Qty:5',
                                          color: const Color.fromARGB(
                                              255, 5, 4, 4),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: 'sixth',
                                        child: mytext(
                                          data: 'Qty:6',
                                          color: const Color.fromARGB(
                                              255, 5, 4, 4),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        dropdownValue = value as String;
                                      });
                                    }),
                                mytext(
                                  data: _MycartList[index].pleft,
                                  color: red6,
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                mytext(
                                  data: _MycartList[index].pname,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                mytext(
                                  data: _MycartList[index].size,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                                RatingBar.builder(
                                  itemSize: 14,
                                  initialRating: 0,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  itemBuilder: (context, _) => myicon(
                                    null,
                                    green,
                                    Icons.star,
                                  ),
                                  onRatingUpdate: (rating) {
                                    // ignore: avoid_print
                                    print(rating);
                                  },
                                ),
                                Row(
                                  children: [
                                    mytext(
                                      data: '₹1499',
                                      color: grey,
                                      fontSize: 17,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                    mytext(
                                      data: '₹499',
                                      color: grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                                mytext(
                                  data: _MycartList[index].deltime,
                                  color: grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                iconbtntext(
                                    () {},
                                    myicon(
                                      null,
                                      black6,
                                      Icons.download_sharp,
                                    ),
                                    mytext(
                                      data: 'Save Later',
                                      color: black6,
                                      fontSize: 12,
                                    ),
                                    ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                commonback))),
                                iconbtntext(
                                    () {},
                                    myicon(null, black6, Icons.delete_outline),
                                    mytext(
                                      data: 'Remove',
                                      color: black6,
                                      fontSize: 12,
                                    ),
                                    ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                commonback))),
                                iconbtntext(
                                    () {},
                                    myicon(null, black6,
                                        Icons.shopping_bag_outlined),
                                    mytext(
                                      data: 'Buy Now',
                                      color: black6,
                                      fontSize: 12,
                                    ),
                                    ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                commonback))),
                              ],
                            ),
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
