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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commoncolor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          iconTheme: const IconThemeData(color: black1),
          backgroundColor: appbar,
          title: const Text('Logo', style: TextStyle(color: brown)),
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
                        return Text(
                          '${snapshot.data}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        );
                      } else {
                        return const Text(
                          '0',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        );
                      }
                    })),
              ],
            )
          ],
        ),
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
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: white1,
                                                ))),
                                        content: image != null
                                            ? Image.file(
                                                image!,
                                                fit: BoxFit.cover,
                                              )
                                            : IconButton(
                                                onPressed: () {},
                                                icon: ClipOval(
                                                    child: Image.network(
                                                        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                                        fit: BoxFit.cover))),
                                      );
                                    });
                              },
                              child: image != null
                                  ? Image.file(
                                      image!,
                                      fit: BoxFit.cover,
                                    )
                                  : IconButton(
                                      onPressed: () {},
                                      icon: InkWell(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    content: image != null
                                                        ? Image.file(
                                                            image!,
                                                            fit: BoxFit.cover,
                                                          )
                                                        : IconButton(
                                                            onPressed: () {},
                                                            icon: ClipOval(
                                                                child: Image
                                                                    .network(
                                                              'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                                              fit: BoxFit.cover,
                                                            ))),
                                                  );
                                                });
                                          },
                                          child: ClipOval(
                                              child: Image.network(
                                                  'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                                  fit: BoxFit.cover)))))),
                      accountName: const Text(
                        'Abhi',
                        style: TextStyle(fontSize: 20),
                      ),
                      accountEmail: const Text('abhi@gmail.com',
                          style: TextStyle(fontSize: 20))),
                  custombtn(() {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Column(
                              children: [
                                TextButton(
                                    onPressed: () {
                                      pickImageCamera();
                                    },
                                    child: const Text('data')),
                                TextButton(
                                    onPressed: () {
                                      pickImageGallery();
                                    },
                                    child: const Text('data'))
                              ],
                            ),
                          );
                        });
                  }, 'Change Profile'),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.logout,
                        color: red,
                      ),
                      label: const Text(
                        'Logout',
                        style: TextStyle(color: red),
                      ))
                ],
              ),
            )),
      ),
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
                  const Text(
                    'Offer Zone',
                    style: TextStyle(
                        color: black2,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
              const Text(
                'Grab Before It’s Gone',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
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
                                        child: Text(
                                          _offerList[index].off,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: white2),
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
                                color: grey2,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      );
                    }),
              ),
              const Text(
                'Under Budget Best Products',
                style: TextStyle(
                    color: orange, fontWeight: FontWeight.bold, fontSize: 20),
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
                        decoration:  BoxDecoration(
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
                              Text(
                                _budgetList[index].under,
                                style: const TextStyle(fontSize: 18),
                              ),
                              Text(
                                _budgetList[index].price,
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
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
