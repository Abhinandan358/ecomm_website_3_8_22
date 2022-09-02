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
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: IconButton(
                                                        onPressed: () {
                                                          Get.back();
                                                        },
                                                        icon:
                                                            const Icon(Icons.close))),
                                                Image.asset(
                                                  _MycartList[index].img,
                                                  height: 0.35.sh,
                                                  width: 0.6.sw,
                                                  fit: BoxFit.cover,
                                                ),
                                                Text(_MycartList[index].pname),
                                                SizedBox(
                                                  width: 0.85.sw,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .all(white2)),
                                                      child: const Text(
                                                        'More About Product',
                                                        style: TextStyle(
                                                            color: blue),
                                                      )),
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
                                  isExpanded: false,
                                    value: dropdownValue,
                                    hint: const Text('Qty:1',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 5, 4, 4))),
                                    items: const [
                                      DropdownMenuItem(
                                          value: 'first',
                                          child: Text(
                                            'Qty:1',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 5, 4, 4)),
                                          )),
                                      DropdownMenuItem(
                                          value: 'second',
                                          child: Text('Qty:2',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 5, 4, 4)))),
                                      DropdownMenuItem(
                                          value: 'third',
                                          child: Text('Qty:3',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 5, 4, 4)))),
                                      DropdownMenuItem(
                                          value: 'fourth',
                                          child: Text('Qty:4',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 5, 4, 4)))),
                                      DropdownMenuItem(
                                          value: 'fifth',
                                          child: Text('Qty:5',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 5, 4, 4)))),
                                      DropdownMenuItem(
                                          value: 'sixth',
                                          child: Text('Qty:6',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 5, 4, 4)))),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        dropdownValue = value as String;
                                      });
                                    }),
                                Text(_MycartList[index].pleft,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: red6))
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _MycartList[index].pname,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: grey2),
                                ),
                                Text(
                                  _MycartList[index].size,
                                  style: const TextStyle(fontSize: 17),
                                ),
                                RatingBar.builder(
                                  itemSize: 14,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      const EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: green,
                                  ),
                                  onRatingUpdate: (rating) {
                                    // ignore: avoid_print
                                    print(rating);
                                  },
                                ),
                                Row(
                                  children: const [
                                    Text('₹1499',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: grey2,
                                            fontSize: 17)),
                                    Text(
                                      '₹499',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Text(
                                  _MycartList[index].deltime,
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                iconbtntext(
                                    () {},
                                    const Icon(Icons.save),
                                    const Text(
                                      'Save Later',
                                      style: TextStyle(fontSize: 12),
                                    )),
                                iconbtntext(
                                    () {},
                                    const Icon(Icons.remove),
                                    const Text(
                                      'Remove',
                                      style: TextStyle(fontSize: 12),
                                    )),
                                iconbtntext(
                                    () {},
                                    const Icon(Icons.shopping_bag),
                                    const Text(
                                      'Buy Now',
                                      style: TextStyle(fontSize: 12),
                                    )),
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
