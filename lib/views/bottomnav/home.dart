import 'package:ecommerce_website_logo3_8_22/views/all_categories/offer_zone.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:ecommerce_website_logo3_8_22/views/details/homedetails.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  // ignore: override_on_non_overriding_member
  static final List<ProductModel> _productList = [
    ProductModel(
        'https://images.unsplash.com/photo-1576871337622-98d48d1cf531?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dHNoaXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'T-Shirts',
        '\$10',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1524805444758-089113d48a6d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2F0Y2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        'Watches',
        '\$30',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
        'T-Shirts',
        '\$51',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
        'Shoes',
        '\$100',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
        'T-Shirts',
        '\$200',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFrZXVwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
        'Makeup',
        '\$300',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
        'Shoes',
        '\$100',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
        'T-Shirts',
        '\$200',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFrZXVwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
        'Makeup',
        '\$300',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
        'Shoes',
        '\$100',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
        'T-Shirts',
        '\$200',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFrZXVwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
        'Makeup',
        '\$300',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
        'Shoes',
        '\$100',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
        'T-Shirts',
        '\$200',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFrZXVwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
        'Makeup',
        '\$300',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
        'Shoes',
        '\$100',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
        'T-Shirts',
        '\$200',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
    ProductModel(
        'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFrZXVwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
        'Makeup',
        '\$300',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec purus nulla, condimentum ut enim non, fringilla blandit nibh. Aenean volutpat arcu sit amet interdum ultrices. Nullam rutrum, est sed scelerisque tristique, mi nunc feugiat nulla, eu venenatis metus massa nec erat. Praesent vel risus eget nunc mollis varius. Cras mauris libero, suscipit ac odio ut, gravida volutpat lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris vel tristique leo. Aliquam erat volutpat.'),
  ];

  static final List<OfferModel> _offerproductList = [
    OfferModel('assets/of1.png', 'Shirts', 'From 199'),
    OfferModel('assets/of2.png', 'Watches', 'Upto 80% Off'),
    OfferModel('assets/of3.png', 'Footwears', 'Upto 50% Off'),
    OfferModel('assets/of4.png', 'Makeup Items', 'Sale is Live')
  ];
  static final List<SlideProductModel> _slideproductList = [
    SlideProductModel('sli1.png'),
    SlideProductModel('sli2.png'),
    SlideProductModel('sli3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commoncolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(children: [
          SizedBox(
            height: 0.2.sh,
            child: Swiper(
                autoplay: true,
                itemCount: _slideproductList.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    'assets/${_slideproductList[index].image}',
                    fit: BoxFit.cover,
                    width: 1.sw,
                  );
                }),
          ),
          SizedBox(height: 0.03.sh),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: mytext('Extra Offers to Make you Happy 😊', null,
                        null, 18, FontWeight.bold, null, null, null)),
                SizedBox(
                  height: 0.18.sh,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _offerproductList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            children: [
                              Image.asset(
                                _offerproductList[index].offerImageList,
                                height: 0.095.sh,
                                width: 0.25.sw,
                                fit: BoxFit.cover,
                              ),
                              mytext(_offerproductList[index].offerpname, grey,
                                  null, null, null, null, null, null),
                              mytext(
                                  _offerproductList[index].offersList,
                                  null,
                                  null,
                                  null,
                                  FontWeight.bold,
                                  null,
                                  null,
                                  null),
                            ],
                          ),
                        );
                      }),
                ),
                //Gridview1=================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        mytext('Popular Products', null, null, 18,
                            FontWeight.bold, null, null, null),
                        Container(
                          height: 0.003.sh,
                          width: 0.099.sw,
                          color: brown,
                        )
                      ],
                    ),
                    iconbtntext(
                      () {
                        Get.to(() => const OfferZone());
                      },
                      mytext('View All', black2, null, 18, FontWeight.bold,
                          null, null, null),
                     myicon(null, black2, Icons.arrow_forward),
                    ),
                  ],
                ),
                SizedBox(
                  child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _productList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.68,
                      ),
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.to(() => Homedetails(
                                          item: _productList[index]));
                                    },
                                    child: Image.network(
                                      _productList[index].image,
                                      height: 0.16.sh,
                                      width: 0.4.sw,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: white),
                                            child: const Icon(
                                              Icons.favorite_border_outlined,
                                            )),
                                        Container(
                                            decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: myicon(null, null, Icons.shopping_cart)),
                                        Container(
                                            decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: myicon(null, null, Icons.visibility_outlined)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              mytext(_productList[index].name, black1, null, 18,
                                  null, null, null, null),
                              mytext(_productList[index].price, red, null, 15,
                                  null, null, null, null),
                            ],
                          ),
                        );
                      }),
                ),
                //gridview2----------------------------
                SizedBox(
                  height: 0.07.sh,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: mytext('Recently Viewed', null, null, 18,
                          FontWeight.bold, null, null, null),
                    ),
                    Container(
                      height: 0.003.sh,
                      width: 0.099.sw,
                      color: brown,
                    )
                  ],
                ),
                SizedBox(
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _productList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.network(
                                    _productList[index].image,
                                    height: 0.2.sh,
                                    width: 0.5.sw,
                                    fit: BoxFit.fill,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: black),
                                            child: myicon(null, null, Icons.favorite_border_outlined,)),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 1,
                                    left: 1,
                                    child: Container(
                                      height: 0.07.sh,
                                      width: 0.5.sw,
                                      decoration:
                                          const BoxDecoration(color: black1),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          mytext(
                                              _productList[index].name,
                                              white1,
                                              null,
                                              18,
                                              null,
                                              null,
                                              null,
                                              null),
                                          mytext(
                                              _productList[index].price,
                                              slightOrange1,
                                              null,
                                              15,
                                              null,
                                              null,
                                              null,
                                              null),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class SlideProductModel {
  // ignore: prefer_typing_uninitialized_variables
  final image;

  SlideProductModel(this.image);
}

class ProductModel {
  final String image, name, price, detailsList;

  ProductModel(this.image, this.name, this.price, this.detailsList);
}

class OfferModel {
  final String offerImageList, offerpname, offersList;

  OfferModel(this.offerImageList, this.offerpname, this.offersList);
}
