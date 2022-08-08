import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: slightOrange,
      body: SingleChildScrollView(
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
          Container(
            height: 65,
            child: ListView.builder(
                itemCount: textList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 238, 232, 230),
                          Color.fromARGB(255, 241, 113, 104),
                          // Color.fromARGB(255, 87, 108, 230)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                      child: Text(
                        textList[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ));
                }),
          ),

          //Gridview1=================================
          Text(
            'View All-->',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 0.4.sh,
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: imagegridList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 30,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Image.network(
                                imagegridList[index],
                                height: 0.2.sh,
                                width: 0.3.sw,
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
                                            color: white),
                                        child: Icon(
                                          Icons.favorite_border_outlined,
                                        )),
                                    Container(
                                        decoration: BoxDecoration(
                                          color: white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(Icons.shopping_cart)),
                                    Container(
                                        decoration: BoxDecoration(
                                          color: white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(Icons.visibility_outlined)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            textList2[index],
                            style: TextStyle(color: black1, fontSize: 18),
                          ),
                          Text(
                            textListpriceList[index],
                            style: TextStyle(color: red, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),

          //gridview2----------------------------
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Recently Viewed---',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 0.2.sh,
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: imagegridList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(color: transperant),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Image.network(
                                imagegridList[index],
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
                                        child: Icon(
                                          Icons.favorite_border_outlined,
                                        )),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 100,
                                child: Container(
                                  width: 0.5.sw,
                                  decoration: BoxDecoration(color: black1),
                                  child: Column(
                                    children: [
                                      Text(
                                        textList2[index],
                                        style: TextStyle(
                                            color: white1, fontSize: 18),
                                      ),
                                      Text(
                                        textListpriceList[index],
                                        style: TextStyle(
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
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}

List imageswiperList = ['1.jpg', '2.jpg', '3.jpg'];
List textList = ['All', 'Dresses', 'Watches', 'Shoes', 'Beauty'];
List imagegridList = [
  'https://images.unsplash.com/photo-1576871337622-98d48d1cf531?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dHNoaXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1524805444758-089113d48a6d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2F0Y2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFrZXVwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
];
List textList2 = [
  'T-Shirts',
  'Watches',
  'T-Shirts',
  'Shoes',
  'T-Shirts',
  'Makeup'
];
List textListpriceList = ['\$10', '\$30', '\$51', '\$100', '\$200', '\$300'];
