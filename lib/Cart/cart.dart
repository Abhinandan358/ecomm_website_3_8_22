import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: const [
          Text(
            'Cart Page',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ],
      )),
    );
  }
}
