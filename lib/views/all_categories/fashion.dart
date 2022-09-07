import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Fashion extends StatefulWidget {
  const Fashion({Key? key}) : super(key: key);

  @override
  State<Fashion> createState() => _FashionState();
}

class _FashionState extends State<Fashion> {
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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  iconbtntext((){}, const Icon(Icons.arrow_back,color: black6,), const Text('Fashion',style: TextStyle(color: black6,fontWeight: FontWeight.bold),)),
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
                              children: const [
                                Text(
                                  'sports shoes, sneakers...',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'up to 40% off',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
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
                      const Text(
                        'Favourite To All!',
                        style: TextStyle(
                            color: orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      iconbtntext(
                          () {},
                          const Text(
                            'View All',
                            style: TextStyle(color: black2, fontSize: 18),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: black2,
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
                                Text(
                                  _offerforyouList[index].name,
                                  style: const TextStyle(
                                      color: grey2, fontSize: 15),
                                ),
                                Text(
                                  _offerforyouList[index].uptooff,
                                  style: const TextStyle(
                                      fontSize: 17, color: green),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  Stack(children: [
                    
                    Image.network('https://media.istockphoto.com/photos/beautiful-child-a-girl-in-a-white-dress-with-a-wreath-of-daisies-on-picture-id1207034841?b=1&k=20&m=1207034841&s=170667a&w=0&h=BNXvQfBFF21KTVeRKMKTG8ZQ-Fk0U8ZqRaPg1gfLId0='),
                    const Positioned(
                      bottom: 30,
                      child: Text('Little Girls Dresses',style: TextStyle(color: white6,fontWeight: FontWeight.bold,fontSize: 20),)),
                      const Positioned(
                      bottom: 0,
                      child: Text('Bright color to make your little bright',style: TextStyle(color: commonback,fontSize: 19),)),
                    ])
                ],
              ),
            ),
          ),
        ));
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
