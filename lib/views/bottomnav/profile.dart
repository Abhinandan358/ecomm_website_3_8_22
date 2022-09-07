import 'package:ecommerce_website_logo3_8_22/views/bottomnav/home.dart';
import 'package:ecommerce_website_logo3_8_22/views/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commoncolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
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
            mytext('Abhinandan Mandal', null, null, 25, FontWeight.bold, null,
                null, null),
            mytext('Flutter Software Engineer', grey, null, 25, null, null,
                null, null),
            mytext('Follow Me', null, null, 20, null, null, null, null),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/f.jpg',
                    height: 40,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/l.jpg',
                    height: 40,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/g.jpg',
                    height: 40,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/t.jpg',
                    height: 40,
                  ),
                )
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const Home());
                  },
                  child: Column(
                    children: [
                      mytext('40', null, null, 25, null, null, null, null),
                      mytext(
                          'Projects', null, null, 22, null, null, null, null),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      mytext('529', null, null, 25, null, null, null, null),
                      mytext(
                          'Following', null, null, 22, null, null, null, null),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      mytext('5834', null, null, 25, null, null, null, null),
                      mytext(
                          'Followers', null, null, 22, null, null, null, null),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(thickness: 2),
            mytext('About', null, null, 20, null, null, null, null),
            mytext(
                'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase. First described in 2015, Flutter was released in May 2017',
                grey1,
                null,
                20,
                null,
                null,
                null,
                null),
          ],
        ),
      ),
    );
  }
}

Widget buildCoverImage() => Image.network(
    'https://images.unsplash.com/photo-1526498460520-4c246339dccb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29kZSUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60');
