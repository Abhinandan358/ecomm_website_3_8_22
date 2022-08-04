import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: black1),
          backgroundColor: white,
          title: Text('Logo', style: TextStyle(color: brown)),
          actions: [
            SizedBox(
              width: 0.4.sw,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(),
                    suffixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.search))),
              ),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_cart_checkout))
          ],
        ),
        body: Column(children: [
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
          SizedBox(
            height: 0.5.sh,
            child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: textList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          color: red2),
                      child: Text(textList[index]));
                }),
          )
        ]));
  }
}

List imageswiperList = ['1.jpg', '2.jpg', '3.jpg'];
List textList = ['All', 'Dresses', 'Watches', 'Shoes', 'Beauty'];
