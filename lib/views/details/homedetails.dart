import 'package:ecommerce_website_logo3_8_22/views/bottomnav/home.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homedetails extends StatefulWidget {
  final ProductModel item;
  const Homedetails({Key? key, required this.item}) : super(key: key);

  @override
  State<Homedetails> createState() => _HomedetailsState();
}

class _HomedetailsState extends State<Homedetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commoncolor,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: black2),
          backgroundColor: white,
          title: const Text(
            'Homedetails',
            style: TextStyle(color: black2),
          )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          children: [
            Image.network(
              widget.item.image,
              fit: BoxFit.cover,
              height: 0.5.sh,
              width: 1.sw,
            ),
            Text(
              'Product Name- ${widget.item.name}',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'Product Price- ${widget.item.price}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Card(
              color: slightOrange,
              margin: const EdgeInsets.all(20),
              elevation: 5,
              child: Text(
                'Details- ${widget.item.detailsList}',
                style: const TextStyle(
                    fontSize: 20,
                    height: 1.2,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [custombtn(() {}, 'Add To Cart')],
      ),
    );
  }
}
