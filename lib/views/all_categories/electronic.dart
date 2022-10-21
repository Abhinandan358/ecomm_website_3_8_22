// import 'dart:convert';
// import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
// import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:http/http.dart';

// class Electronic extends StatefulWidget {
//   const Electronic({Key? key}) : super(key: key);

//   @override
//   State<Electronic> createState() => _ElectronicState();
// }

// class _ElectronicState extends State<Electronic> {

//   List<CategoryAgainstSubcategory> categoryList1 = [];
  
//   @override
//   void initState() {
//     super.initState();
//     _getPost();
//   }

//   _getPost() async {
//     String url =
//         'https://demo50.gowebbi.us/api/MasterApi/CategoryAginstSubcategory';
//     var result = await get(Uri.parse(url));
//     if (result.statusCode == 200) {
//       var response = Subcategory.formJson(jsonDecode(result.body));
//       categoryList1 = response.subcategoryList1;
//       // ignore: avoid_print
//       setState(() {});
//       // ignore: avoid_print
//       print(result.body);
//     } else {
//       // ignore: avoid_print
//       print('Api error ${result.statusCode}');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SizedBox(
//           height: 0.5.sh,
//           child: GridView.builder(
//               itemCount: categoryList1.length,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 childAspectRatio: 0.7,
//               ),
//               itemBuilder: (context, index) {
//                 return Column(
//                   children: [
//                     InkWell(
//                       onTap: (){
//                         // Text(subcategorylistModelList[index].subId);
//                       },
//                       child: CircleAvatar(
//                         radius: 30,
//                         backgroundColor: red6,
//                         child: Text(categoryList1[index].catId,style: const TextStyle(color: white,fontWeight: FontWeight.bold),),
//                       ),
//                     ),
//                     Text(categoryList1[index].catName),
//                     for(var i=0; i<categoryList1[index].subcategorylist.length; i++)
//                     Text(categoryList1[index].subcategorylist[i].subName)
//                   ],
//                 );
//               }),
//         ),
//       ),
//     );
//   }
// }
