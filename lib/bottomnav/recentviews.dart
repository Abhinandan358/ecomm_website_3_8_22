// import 'package:flutter/material.dart';

// class recentViews extends StatefulWidget {
//   const recentViews({Key? key}) : super(key: key);

//   @override
//   State<recentViews> createState() => _recentViewsState();
// }

// class _recentViewsState extends State<recentViews> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 'Recently Viewed---',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               height: 0.1.sh,
//               child: GridView.builder(
//                   //physics: NeverScrollableScrollPhysics(),
//                   itemCount: _productList.length,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 5,
//                   ),
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: Container(
//                         decoration: BoxDecoration(color: transperant),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Stack(
//                               children: [
//                                 Image.network(
//                                   _productList[index].image,
//                                   height: 0.2.sh,
//                                   width: 0.5.sw,
//                                   fit: BoxFit.fill,
//                                 ),
//                                 Align(
//                                   alignment: Alignment.topRight,
//                                   child: Column(
//                                     children: [
//                                       Container(
//                                           decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(20),
//                                               color: black),
//                                           child: Icon(
//                                             Icons.favorite_border_outlined,
//                                           )),
//                                     ],
//                                   ),
//                                 ),
//                                 Positioned(
//                                   top: 100,
//                                   child: Container(
//                                     width: 0.5.sw,
//                                     decoration: BoxDecoration(color: black1),
//                                     child: Column(
//                                       children: [
//                                         Text(
//                                           _productList[index].name,
//                                           style: TextStyle(
//                                               color: white1, fontSize: 18),
//                                         ),
//                                         Text(
//                                           _productList[index].price,
//                                           style: TextStyle(
//                                               color: slightOrange1,
//                                               fontSize: 15),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   }),
//             ),
//     );
//   }
// }

// List imagegridList = [
//   'https://images.unsplash.com/photo-1576871337622-98d48d1cf531?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dHNoaXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
//   'https://images.unsplash.com/photo-1524805444758-089113d48a6d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2F0Y2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
//   'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
//   'https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
//   'https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
//   'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFrZXVwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
//    'https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
//   'https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
//   'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFrZXVwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
//    'https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
//   'https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
//   'https://images.unsplash.com/photo-1596462502278-27bfdc403348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFrZXVwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
// ];
// List textList2 = [
//   'T-Shirts',
//   'Watches',
//   'T-Shirts',
//   'Shoes',
//   'T-Shirts',
//   'Makeup',
//   'Shoes',
//   'T-Shirts',
//   'Makeup',
//   'Shoes',
//   'T-Shirts',
//   'Makeup'
// ];
// List textListpriceList = ['\$10', '\$30', '\$51', '\$100', '\$200', '\$300','\$100', '\$200', '\$300','\$100', '\$200', '\$300'];
