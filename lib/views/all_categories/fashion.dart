import 'package:card_swiper/card_swiper.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/home/dashboard.dart';
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

  static final List<SlideProductModel> _list1 = [
    SlideProductModel('mana-akbarzadegan-Y0RB2z12F1A-unsplash (1) 1.png'),
    SlideProductModel('p1.jpg'),
    SlideProductModel('p2.jpg'),
  ];

  static final List<SlideProductModel1> _list2 = [
    SlideProductModel1(
        'https://media.istockphoto.com/photos/beautiful-child-a-girl-in-a-white-dress-with-a-wreath-of-daisies-on-picture-id1207034841?b=1&k=20&m=1207034841&s=170667a&w=0&h=BNXvQfBFF21KTVeRKMKTG8ZQ-Fk0U8ZqRaPg1gfLId0='),
    SlideProductModel1(
        'https://media.istockphoto.com/photos/beautiful-child-a-girl-in-a-white-dress-with-a-wreath-of-daisies-on-picture-id1207034841?b=1&k=20&m=1207034841&s=170667a&w=0&h=BNXvQfBFF21KTVeRKMKTG8ZQ-Fk0U8ZqRaPg1gfLId0='),
    SlideProductModel1(
        'https://media.istockphoto.com/photos/beautiful-child-a-girl-in-a-white-dress-with-a-wreath-of-daisies-on-picture-id1207034841?b=1&k=20&m=1207034841&s=170667a&w=0&h=BNXvQfBFF21KTVeRKMKTG8ZQ-Fk0U8ZqRaPg1gfLId0='),
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
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                      isDense: true,
                      fillColor: appbarSearch,
                      filled: true,
                      suffixIcon: myiconbutton(
                        onPressed: () {},
                        icon: myicon(
                          icon: Icons.search,
                          color: grey,
                          size: 25,
                        ),
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
                        color: red6,
                      ),
                      const Text('My Account',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      const Divider(
                        color: red6,
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
                        color: red6,
                      ),
                      Text('Terms & Conditions',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      Divider(
                        color: red6,
                      ),
                      Text('Privacy Policy',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ],
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
                    iconbtntext(() {
                      Get.to(() => DashBoardPage());
                    },
                        myicon(
                          color: black6,
                          icon: Icons.arrow_back,
                        ),
                        mytext(
                          data: 'Fashion',
                          color: black6,
                          fontWeight: FontWeight.bold,
                        ),
                        ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(commonback))),
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
                                backgroundColor: commonback,
                                radius: 40,
                                child: Image.asset(
                                  _list[index].img,
                                  height: 0.1.sh,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 200,
                          child: Swiper(
                              autoplay: true,
                              itemCount: _list1.length,
                              itemBuilder: (context, index) {
                                return Image.asset(
                                  'assets/${_list1[index].image}',
                                  fit: BoxFit.fill,
                                  width: 1.sw,
                                );
                              }),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: Image.asset('assets/new 1.png')),
                        SizedBox(
                          width: 0.96.sw,
                          child: Container(
                            color: white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                mytext(
                                  data: 'sports shoes, sneakers...',
                                  fontSize: 18,
                                ),
                                mytext(
                                  data: 'up to 40% off',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mytext(
                          data: 'Favourite To All!',
                          color: red6,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                    ),
                    Stack(children: [
                      SizedBox(
                        height: 200,
                        child: Swiper(
                            autoplay: true,
                            itemCount: _list2.length,
                            itemBuilder: (context, index) {
                              return Image.network(
                                '${_list2[index].image}',
                                fit: BoxFit.fill,
                                width: 1.sw,
                              );
                            }),
                      ),
                      Positioned(
                          bottom: 30,
                          child: mytext(
                            data: 'Little Girls Dresses',
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      Positioned(
                          bottom: 0,
                          child: mytext(
                            data: 'Bright color to make your little bright',
                            color: commonback,
                            fontSize: 19,
                          )),
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

class SlideProductModel {
  // ignore: prefer_typing_uninitialized_variables
  final image;

  SlideProductModel(this.image);
}

class SlideProductModel1 {
  // ignore: prefer_typing_uninitialized_variables
  final image;

  SlideProductModel1(this.image);
}
