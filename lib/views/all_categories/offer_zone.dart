import 'dart:async';
import 'dart:io';
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
      backgroundColor: commonback,
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
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: mytextformfield(
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10.0),
                          isDense: true,
                          fillColor: red6,
                          filled: true,
                          suffixIcon: myiconbutton(
                            onPressed: () {},
                            icon:  myicon( icon: Icons.search,
                              color: grey,
                              size: 25, ),
                          ))),
                ),
                myiconbutton(
                    onPressed: () {},
                    icon: myicon(icon: Icons.shopping_cart_outlined))
              ]),
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
                  myicon(
                    color: black6,
                    icon: Icons.arrow_back,
                  ),
                  mytext(
                    data: 'Offer Zone',
                    color: black6,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(commonback))),
              mytext(
                data: 'Grab Before It’s Gone',
                color: orange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
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
                                          data: _offerList[index].off,
                                          color: white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                color: grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      );
                    }),
              ),
              mytext(
                data: 'Under Budget Best Products',
                color: orange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
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
                              mytext(
                                data: _budgetList[index].under,
                                fontSize: 18,
                              ),
                              mytext(
                                data: _budgetList[index].price,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  mytext(
                    data: 'Offers For You',
                    color: orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  iconbtntext(
                      () {},
                      mytext(
                        data: 'View All',
                        color: black6,
                        fontSize: 18,
                      ),
                      myicon(
                        color: black6,
                        icon: Icons.arrow_forward_ios_outlined,
                      ),
                      ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(commonback)))
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
                        color: white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              _offerforyouList[index].img,
                              height: 0.13.sh,
                              width: 0.29.sw,
                              fit: BoxFit.fill,
                            ),
                            mytext(
                              data: _offerforyouList[index].name,
                              color: grey,
                              fontSize: 15,
                            ),
                            mytext(
                              data: _offerforyouList[index].uptooff,
                              color: green,
                              fontSize: 17,
                            )
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
