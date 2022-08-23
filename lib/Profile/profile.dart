import 'package:ecommerce_website_logo3_8_22/bottomnav/home.dart';
import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //final List<coverimageModel> _clist=[];
  @override
  // void initState() {
  //   
  //   super.initState();
  //   _clist.add(coverimageModel('https://images.unsplash.com/photo-1526498460520-4c246339dccb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29kZSUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Stack(
              children: [
                InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Image.network(
                                'https://images.unsplash.com/photo-1526498460520-4c246339dccb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29kZSUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60');
                          });
                    },
                    child: buildCoverImage()),
                SizedBox(
                  height: 300,
                  width: 500,
                  //color: Color.fromARGB(255, 98, 244, 54),
                  child: Center(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: transperant,
                                content: Image.network(
                                  'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                  fit: BoxFit.cover,
                                ),
                              );
                            });
                      },
                      child: ClipOval(
                        child: Image.network(
                          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                  )),
                ),
              ],
            ),
            const Text('Abhinandan Mandal',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const Text('Flutter Software Engineer',
                style: TextStyle(color: grey, fontSize: 25)),
            const Text(
              'Follow Me',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){},
                  child: Image.asset(
                    'assets/f.jpg',
                    height: 40,
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Image.asset(
                    'assets/l.jpg',
                    height: 40,
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Image.asset(
                    'assets/g.jpg',
                    height: 40,
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Image.asset(
                    'assets/t.jpg',
                    height: 40,
                  ),
                )
              ],
            ),
            const Divider(thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Get.to(()=>const Home());
                  },
                  child: Column(
                    children: const [
                      Text('40',style: TextStyle(fontSize: 25),),
                      Text('Projects',style: TextStyle(fontSize: 22),),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Column(
                    children: const [
                      Text('529',style: TextStyle(fontSize: 25),),
                      Text('Following',style: TextStyle(fontSize: 22),),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Column(
                    children: const [
                      Text('5834',style: TextStyle(fontSize: 25),),
                      Text('Followers',style: TextStyle(fontSize: 22),),
                    ],
                  ),
                ),
                
              ],
            ),
            const Divider(thickness: 2),
            const Text('About',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            
            const Text('Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase. First described in 2015, Flutter was released in May 2017',style: TextStyle(fontSize: 20,color: grey1),)
          ],
        ),
      ),
    );
  }
}

// class CustomClipPath extends CustomClipper<Path> {
//   Path getClip(Size size) {
//     double w = size.width;
//     double h = size.height;
//     final path = Path();
//     //path.moveTo(2, 100);
//     path.lineTo(2, h);
//     path.quadraticBezierTo(w * 0.5, h - 100, w, h);
//     path.lineTo(w, 0);
//     path.moveTo(2, 280);
//     path..close();
//     return path;
//   }

//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
//}

Widget buildCoverImage() => Image.network(
    'https://images.unsplash.com/photo-1526498460520-4c246339dccb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29kZSUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60');

// class coverimageModel{
//   final image;

//   coverimageModel(this.image);
// }