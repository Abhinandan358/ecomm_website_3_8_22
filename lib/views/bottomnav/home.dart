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
  double productitemHeight = 0.326.sh;
  double secprodHeight = 300;

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
  ];

  static final List<OfferModel> _offerproductList = [
    OfferModel(
        'https://rukminim1.flixcart.com/image/495/594/kll7bm80/shirt/c/w/c/xl-h2-finivo-fashion-original-imagyzfc9x9ws9fn.jpeg?q=50',
        'Shirts',
        'From 199'),
    OfferModel(
        'https://rukminim1.flixcart.com/image/495/594/k6l2vm80/watch/r/z/n/arrow-black-daniel-jubile-original-imafjyyhwkedgeja.jpeg?q=50',
        'Watches',
        'Upto 80% Off'),
    OfferModel(
        'https://rukminim1.flixcart.com/image/495/594/xif0q/shoe/q/u/b/5-au-brd-406-gry-5-birde-grey-original-imag5ccyzzwrwwfh-bb.jpeg?q=50',
        'Footwears',
        'Upto 50% Off'),
    OfferModel(
        'https://rukminim1.flixcart.com/image/612/612/l44hyfk0/combo-kit/b/h/d/instaweddings-combo-fitme-foundation-115-colossal-waterproof-original-imagf3bk78p9gpfb.jpeg?q=70',
        'Makeup Items',
        'Sale is Live')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [white1, red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            SizedBox(
              height: 0.25.sh,
              child: Swiper(
                  autoplay: true,
                  itemCount: imageswiperList.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      'assets/${imageswiperList[index]}',
                      fit: BoxFit.cover,
                      width: 1.sw,
                    );
                  }),
            ),
            SizedBox(height: 0.03.sh),
            const Align(
                alignment: Alignment.bottomLeft,
                child: Text('Extra Offers to Make you Happy 😊',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            SizedBox(
              height: 0.16.sh,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _offerproductList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Image.network(
                            _offerproductList[index].offerImageList,
                            height: 0.08.sh,
                            width: 0.25.sw,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            _offerproductList[index].offerpname,
                            style: const TextStyle(color: grey),
                          ),
                          Text(
                            _offerproductList[index].offersList,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            //Gridview1=================================
            TextButton.icon(
                onPressed: () {},
                icon: const Text(
                  'View All',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18, color: black2),
                ),
                label: const Icon(Icons.arrow_forward, color: black2)),
            SizedBox(
              height: productitemHeight * _productList.length / 3,
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _productList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.5,
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
                                  Get.to(() =>
                                      Homedetails(item: _productList[index]));
                                },
                                child: Image.network(
                                  _productList[index].image,
                                  height: productitemHeight / 1.5,
                                  width: 0.50.sw,
                                  fit: BoxFit.fill,
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
                                        child: const Icon(Icons.shopping_cart)),
                                    Container(
                                        decoration: BoxDecoration(
                                          color: white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Icon(
                                            Icons.visibility_outlined)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            _productList[index].name,
                            style: const TextStyle(color: black1, fontSize: 18),
                          ),
                          Text(
                            _productList[index].price,
                            style: const TextStyle(color: red, fontSize: 15),
                          ),
                        ],
                      ),
                    );
                  }),
            ),

            //gridview2----------------------------
            SizedBox(
              height: 0.07.sh,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Recently Viewed---',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: secprodHeight * _productList.length / 2,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _productList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                                height: secprodHeight / 2,
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
                                        child: const Icon(
                                          Icons.favorite_border_outlined,
                                        )),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  height: 0.09.sh,
                                  width: 0.5.sw,
                                  decoration:
                                      const BoxDecoration(color: black1),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        _productList[index].name,
                                        style: const TextStyle(
                                            color: white1, fontSize: 18),
                                      ),
                                      Text(
                                        _productList[index].price,
                                        style: const TextStyle(
                                            color: slightOrange1, fontSize: 15),
                                      ),
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
          ]),
        ),
      ),
    );
  }
}

List imageswiperList = ['1.jpg', '2.jpg', '3.jpg'];
List textList = ['All', 'Dresses', 'Watches', 'Shoes', 'Beauty'];

class ProductModel {
  final String image, name, price, detailsList;

  ProductModel(this.image, this.name, this.price, this.detailsList);
}

class OfferModel {
  final String offerImageList, offerpname, offersList;

  OfferModel(this.offerImageList, this.offerpname, this.offersList);
}
