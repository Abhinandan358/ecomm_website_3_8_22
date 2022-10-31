import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final CategoryAgainstSubcategory item;
  const DetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: widget.item.subcategoryList.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(widget.item.subcategoryList[index].SubName,
                    style: const TextStyle(color: Colors.white))),
          ],
        );
      }),
    ));
  }
}
