import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
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
      backgroundColor: commoncolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
        child: SizedBox(
          height: 0.9.sh,
          child: Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    mytext('Help', black6, null, 30, FontWeight.bold, null,
                        null, null),
                    Image.network(
                        'https://media.istockphoto.com/photos/speech-bubble-with-question-mark-icon-picture-id1395757572?b=1&k=20&m=1395757572&s=170667a&w=0&h=Q70tELhVZfgp0FGLmKWN-3sxOaPRp8ZLy-n9--YTL6c='),
                    TextFormField(
                      controller: nameCtrl,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Required";
                        }
                        return null;
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
                        if (value == null || value.isEmpty) {
                          return "Required";
                        }
                        return null;
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
                        if (value == null || value.isEmpty) {
                          return "Required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'Comments',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    custombtn(() {
                      if (formkey.currentState!.validate()) {
                        var snackbar =  SnackBar(
                            content: mytext('We are contact with you very soon', null, null, null, null, null, null, null));
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
