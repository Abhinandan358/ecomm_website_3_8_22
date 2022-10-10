import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
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
                color: white2,
                child: Column(
                  children: [
                    ListTile(
                      leading: mytext('Deliver to : ', null, null, 18, null,
                          null, null, null, null),
                      title: mytext('Customer Name', null, null, 18,
                          FontWeight.bold, null, null, null, null),
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
                          'Address : ', null, null, 18, null, null, null, null, null),
                      title: mytext('Customer’s Full Address', null, null, 18,
                          FontWeight.bold, null, null, null, null),
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
                        color: white2,
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
                                                    _MycartList[index].pname,
                                                    null,
                                                    null,
                                                    null,
                                                    null,
                                                    null,
                                                    null,
                                                    null, null),
                                                SizedBox(
                                                  width: 0.85.sw,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .all(white2)),
                                                      child: mytext(
                                                          'More About Product',
                                                          blue,
                                                          null,
                                                          null,
                                                          null,
                                                          null,
                                                          null,
                                                          null, null)),
                                                )
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
                                        'Qty:1',
                                        const Color.fromARGB(255, 5, 4, 4),
                                        null,
                                        15,
                                        FontWeight.bold,
                                        null,
                                        null,
                                        null, null),
                                    items: [
                                      DropdownMenuItem(
                                        value: 'first',
                                        child: mytext(
                                            'Qty:1',
                                            const Color.fromARGB(255, 5, 4, 4),
                                            null,
                                            15,
                                            FontWeight.bold,
                                            null,
                                            null,
                                            null, null),
                                      ),
                                      DropdownMenuItem(
                                        value: 'second',
                                        child: mytext(
                                            'Qty:2',
                                            const Color.fromARGB(255, 5, 4, 4),
                                            null,
                                            15,
                                            FontWeight.bold,
                                            null,
                                            null,
                                            null, null),
                                      ),
                                      DropdownMenuItem(
                                        value: 'third',
                                        child: mytext(
                                            'Qty:3',
                                            const Color.fromARGB(255, 5, 4, 4),
                                            null,
                                            15,
                                            FontWeight.bold,
                                            null,
                                            null,
                                            null, null),
                                      ),
                                      DropdownMenuItem(
                                        value: 'fourth',
                                        child: mytext(
                                            'Qty:4',
                                            const Color.fromARGB(255, 5, 4, 4),
                                            null,
                                            15,
                                            FontWeight.bold,
                                            null,
                                            null,
                                            null, null),
                                      ),
                                      DropdownMenuItem(
                                        value: 'fifth',
                                        child: mytext(
                                            'Qty:5',
                                            const Color.fromARGB(255, 5, 4, 4),
                                            null,
                                            15,
                                            FontWeight.bold,
                                            null,
                                            null,
                                            null, null),
                                      ),
                                      DropdownMenuItem(
                                        value: 'sixth',
                                        child: mytext(
                                            'Qty:6',
                                            const Color.fromARGB(255, 5, 4, 4),
                                            null,
                                            15,
                                            FontWeight.bold,
                                            null,
                                            null,
                                            null, null),
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        dropdownValue = value as String;
                                      });
                                    }),
                                mytext(_MycartList[index].pleft, red6, null,
                                    null, FontWeight.bold, null, null, null, null)
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                mytext(_MycartList[index].pname, null, null, 18,
                                    FontWeight.bold, null, null, null, null),
                                mytext(_MycartList[index].size, null, null, 17,
                                    FontWeight.bold, null, null, null, null),
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
                                    mytext('₹1499', grey2, null, 17, null, null,
                                        null, TextDecoration.lineThrough, null),
                                    mytext('₹499', grey2, null, 18,
                                        FontWeight.bold, null, null, null, null),
                                  ],
                                ),
                                mytext(_MycartList[index].deltime, grey2, null,
                                    17, FontWeight.bold, null, null, null, null),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                iconbtntext(
                                    () {},
                                   myicon(null, black6,  Icons.download_sharp,),
                                    mytext('Save Later', black6, null, 12, null,
                                        null, null, null, null),
                                        ButtonStyle(backgroundColor: MaterialStateProperty.all(commoncolor))
                                        ),
                                iconbtntext(
                                    () {},
                                    myicon(null, black6, Icons.delete_outline),
                                    mytext('Remove', black6, null, 12, null,
                                        null, null, null, null),
                                        ButtonStyle(backgroundColor: MaterialStateProperty.all(commoncolor))
                                        ),
                                iconbtntext(
                                    () {},
                                    myicon(null, black6, Icons.shopping_bag_outlined),
                                    mytext('Buy Now', black6, null, 12, null,
                                        null, null, null, null),
                                        ButtonStyle(backgroundColor: MaterialStateProperty.all(commoncolor))
                                        ),
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
