import 'dart:async';
import 'dart:io';
import 'package:ecommerce_website_logo3_8_22/views/bottomnav/cart.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class OfferZone extends StatefulWidget {
  const OfferZone({Key? key}) : super(key: key);

  @override
  State<OfferZone> createState() => _OfferZoneState();
}

class _OfferZoneState extends State<OfferZone> {
  int count = 0;
  final StreamController<int> _streamController = StreamController();
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

  static final List<OfferZoneModel> _offerList = [
    OfferZoneModel('assets/o1.jpg', 'Upto 40% Off', 'Premium Sarees'),
    OfferZoneModel('assets/o2.jpg', 'Upto 20% Off', 'Smart Watches'),
    OfferZoneModel('assets/o3.jpg', 'Upto 60% Off', 'T-shirts'),
    OfferZoneModel('assets/o4.jpg', 'Upto 40% Off', 'Sports Shoes'),
    OfferZoneModel('assets/o5.jpg', 'Upto 20% Off', 'kids’ Combo Sets'),
    OfferZoneModel('assets/o6.jpg', 'Upto 50% Off', 'Jewellery'),
    OfferZoneModel('assets/o7.jpg', 'Upto 50% Off', 'Precious Jewellery'),
    OfferZoneModel('assets/o8.jpg', 'Upto 60% Off', 'Women Kurtas'),
    OfferZoneModel('assets/o9.jpg', 'Upto 40% Off', 'Casual Shoes'),
  ];

  static final List<BudgetModel> _budgetList = [
    BudgetModel('Under', '₹199'),
    BudgetModel('Under', '₹399'),
    BudgetModel('Under', '₹599')
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
      backgroundColor: commoncolor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
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
                    hintText: 'Search',
                    fillColor: appbarSearch,
                    filled: true,
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: grey2,
                          size: 25,
                        ))),
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
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              iconbtntext(() {
                Get.back();
              },
                  const Icon(
                    Icons.arrow_back,
                    color: black2,
                  ),
                  mytext('Offer Zone', black2, null, 20, FontWeight.bold, null,
                      null, null)),
              mytext('Grab Before It’s Gone', orange, null, 20, FontWeight.bold,
                  null, null, null),
              SizedBox(
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _offerList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      childAspectRatio: 0.5,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 170,
                            width: 170,
                            margin: const EdgeInsets.all(2),
                            color: orange1,
                            child: Column(
                              children: [
                                Stack(children: [
                                  Image.asset(
                                    _offerList[index].image,
                                    height: 0.2.sh,
                                    width: 0.38.sw,
                                    // fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 10,
                                    right: 10,
                                    child: Center(
                                      child: Container(
                                        padding: const EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                            color: orange,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: mytext(
                                            _offerList[index].off,
                                            white2,
                                            null,
                                            13,
                                            FontWeight.bold,
                                            null,
                                            null,
                                            null),
                                      ),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                          ),
                          Text(
                            _offerList[index].pname,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: grey2,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      );
                    }),
              ),
              mytext('Under Budget Best Products', orange, null, 20,
                  FontWeight.bold, null, null, null),
              SizedBox(
                height: 0.2.sh,
                child: ListView.builder(
                    itemCount: _budgetList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [gradienttop, gradientbottom],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: orange,
                          radius: 60,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              mytext(_budgetList[index].under, null, null, 18,
                                  null, null, null, null),
                              mytext(_budgetList[index].price, null, null, 22,
                                  FontWeight.bold, null, null, null),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  mytext('Offers For You', orange, null, 20, FontWeight.bold,
                      null, null, null),
                  iconbtntext(
                      () {},
                      mytext(
                          'View All', black2, null, 18, null, null, null, null),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              _offerforyouList[index].img,
                              height: 0.13.sh,
                              width: 0.29.sw,
                              fit: BoxFit.fill,
                            ),
                            mytext(_offerforyouList[index].name, grey2, null,
                                15, null, null, null, null),
                            mytext(_offerforyouList[index].uptooff, green, null,
                                17, null, null, null, null)
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OfferZoneModel {
  final String image, off, pname;

  OfferZoneModel(this.image, this.off, this.pname);
}

class BudgetModel {
  final String under, price;

  BudgetModel(this.under, this.price);
}

class OffersForyouModel {
  final String img, name, uptooff;

  OffersForyouModel(this.img, this.name, this.uptooff);
}
