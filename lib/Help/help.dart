import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  var formkey = GlobalKey<FormState>();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController proffCtrl = TextEditingController();
  TextEditingController commCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 0.5.sh,
          child: Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Help',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      controller: nameCtrl,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if(value==null||value.isEmpty){
                          return "Required";
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    TextFormField(
                      controller: proffCtrl,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if(value==null||value.isEmpty){
                          return "Required";
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Profession',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    TextFormField(
                      controller: commCtrl,
                      keyboardType: TextInputType.multiline,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if(value==null||value.isEmpty){
                          return "Required";
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Comments',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    custombtn(() {
                      if(formkey.currentState!.validate()){
                        var snackbar = SnackBar(content: Text('We are contact with you very soon'));
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      }
                    }, 'Help')
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
