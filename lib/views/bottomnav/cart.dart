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
                    itemExtent: 290.0,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: _MycartList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(10),
                        color: white7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Image.asset(
                                _MycartList[index].img,
                                fit: BoxFit.fill,
                                height: 0.225.sh,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        _MycartList[index].pname,
                                        style: const TextStyle(
                                            fontSize: 19, color: grey2),
                                      ),
                                      iconbtntext(() {}, const Icon(Icons.save),
                                          const Text('Save'))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        _MycartList[index].size,
                                        style: const TextStyle(
                                            fontSize: 18.2, color: grey2),
                                      ),
                                      iconbtntext(() {}, const Icon(Icons.save),
                                          const Text('Save'))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      RatingBar.builder(
                                        itemSize: 15.6,
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          // ignore: avoid_print
                                          print(rating);
                                        },
                                      ),
                                      iconbtntext(() {}, const Icon(Icons.save),
                                          const Text('Save'))
                                    ],
                                  ),
                                  Row(
                                    children: const [
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
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(_MycartList[index].deltime)
                                ],
                              ),
                            ]),
                            DropdownButton(
                                value: dropdownValue,
                                hint: const Text('Selcct Item',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 5, 4, 4))),
                                items: const [
                                  DropdownMenuItem(
                                      value: 'first',
                                      child: Text(
                                        'First',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 5, 4, 4)),
                                      )),
                                  DropdownMenuItem(
                                      value: 'second',
                                      child: Text('Second',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 5, 4, 4)))),
                                  DropdownMenuItem(
                                      value: 'third',
                                      child: Text('Third',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 5, 4, 4)))),
                                  DropdownMenuItem(
                                      value: 'fourth',
                                      child: Text('Fourth',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 5, 4, 4)))),
                                  DropdownMenuItem(
                                      value: 'fifth',
                                      child: Text('Fifth',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 5, 4, 4)))),
                                  DropdownMenuItem(
                                      value: 'sixth',
                                      child: Text('Sixth',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 5, 4, 4)))),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    dropdownValue = value as String;
                                  });
                                }),
                            Text(
                              _MycartList[index].pleft,
                              style: const TextStyle(
                                  color: red6, fontWeight: FontWeight.bold),
                            )
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
