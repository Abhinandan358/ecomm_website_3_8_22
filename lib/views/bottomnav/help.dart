// import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class Help extends StatefulWidget {
//   const Help({Key? key}) : super(key: key);

//   @override
//   State<Help> createState() => _HelpState();
// }

// class _HelpState extends State<Help> {
//   var formkey = GlobalKey<FormState>();
//   TextEditingController nameCtrl = TextEditingController();
//   TextEditingController proffCtrl = TextEditingController();
//   TextEditingController commCtrl = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: commonback,
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
//         child: SizedBox(
//           height: 0.9.sh,
//           child: Form(
//               key: formkey,
//               child: Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     mytext(
//                       data: 'Help',
//                       color: black6,
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     Image.network(
//                         'https://media.istockphoto.com/photos/speech-bubble-with-question-mark-icon-picture-id1395757572?b=1&k=20&m=1395757572&s=170667a&w=0&h=Q70tELhVZfgp0FGLmKWN-3sxOaPRp8ZLy-n9--YTL6c='),
//                     mytextformfield(
//                       controller: nameCtrl,
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "Required";
//                         }
//                         return null;
//                       },
//                       labelText: 'Name',
//                       hintText: 'Name',
//                       fillColor: white,
//                     ),
//                     mytextformfield(
//                       controller: proffCtrl,
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "Required";
//                         }
//                         return null;
//                       },
//                       labelText: 'Profession',
//                       hintText: 'Profession',
//                       fillColor: white,
//                     ),
//                     mytextformfield(
//                       controller: commCtrl,
//                       keyboardType: TextInputType.multiline,
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "Required";
//                         }
//                         return null;
//                       },
//                       labelText: 'Comments',
//                       hintText: 'Comments',
//                       fillColor: white,
//                     ),
//                     custombtn(
//                         onPressed: () {
//                           if (formkey.currentState!.validate()) {
//                             var snackbar = SnackBar(
//                                 content: mytext(
//                               data: 'We are contact with you very soon',
//                             ));
//                             ScaffoldMessenger.of(context)
//                                 .showSnackBar(snackbar);
//                           }
//                         },
//                         btntxt: 'Help')
//                   ],
//                 ),
//               )),
//         ),
//       ),
//     );
//   }
// }

// COUNTRY api------------------------
//
 import 'dart:convert';

import 'package:ecommerce_website_logo3_8_22/models/model_constant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

 class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  List<CountryData> _countryList1 = [];
  late Future<List<CountryData>> _future;
  List<CountryModel> countryList1 = [];
  @override
  void initState() {
    super.initState();
    _future = _getPost();
   
  }

  // _getData() async {
  //   String url =
  //       'https://demo50.gowebbi.us/api/MasterApi/CategoryAginstSubcategory';
  //   var result = await get(Uri.parse(url));
  //   if (result.statusCode == 200) {
  //     var response = CountryModel.formJs(jsonDecode(result.body));
  //     countryList1 = response.dataList;
  //     // ignore: avoid_print
  //     setState(() {});
  //     // ignore: avoid_print
  //     print(result.body);
  //   } else {
  //     // ignore: avoid_print
  //     print('Api error ${result.statusCode}');
  //   }
  // }

  Future<List<CountryData>> _getPost() async {
    String url = 'https://demo42.gowebbi.in/api/MasterApi/FetchCountry';
    var result = await get(Uri.parse(url));
    if (result.statusCode == 200) {
      var response = CountryModel.formJson(jsonDecode(result.body));
      if (response.status == 'success') {
        _countryList1 = response.dataList;
      }
      // ignore: avoid_print
      print(result.body);
    } else {
      // ignore: avoid_print
      print('Api error ${result.statusCode}');
    }
    return [];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<CountryData>>(
        future: _future,
        builder: (context,snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: _countryList1.length,
              itemBuilder: (context,index){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_countryList1[index].Country,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)
                ],
              );
            });
          }
          else if(snapshot.hasData){
            return Text('data');
          }else{
            return Text('error');
          }
        }),
    );
  }
} 





















