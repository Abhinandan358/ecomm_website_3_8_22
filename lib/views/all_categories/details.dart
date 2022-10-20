import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/fetch_category_controller.dart';

class DetailsPage extends StatefulWidget {
  final CategoryList item;
  const DetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: widget.item.subcategorylist.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(widget.item.subcategorylist[index].subId,
                    style: const TextStyle(color: Colors.white))),
           
          ],
        );
      }),
    ));
  }
}
