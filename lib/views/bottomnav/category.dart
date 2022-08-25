import 'package:ecommerce_website_logo3_8_22/custom/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  double productitemHeight = 0.4.sh;
  static final List<CategoryModel> _categoryList = [
    CategoryModel(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-LJowZ76iaayImh1htMvrdfuQwkvUd0715w&usqp=CAU',
        'Offer Zone'),
    CategoryModel(
        'https://rukminim1.flixcart.com/image/495/594/kod858w0/sari/t/t/o/free-807s1-saara-unstitched-original-imag2u9vrhywe2bg.jpeg?q=50',
        'Fashion'),
    CategoryModel(
        'https://rukminim1.flixcart.com/image/495/594/ks7tuvk0/slipper-flip-flop/o/z/v/6-fe-384or-384wt-footup-multicolor-6-original-imag5u4wqzejpzjj.jpeg?q=50',
        'Footwear'),
    CategoryModel(
        'https://rukminim1.flixcart.com/image/495/594/klb78nk0/watch/m/l/m/sports-design-new-arrival-blue-pu-belt-analog-watch-for-boys-original-imagygpwbkeqghjx.jpeg?q=50',
        'Watches'),
    CategoryModel(
        'https://rukminim1.flixcart.com/image/612/612/kh0vonk0/eye-liner/y/y/g/4-5-eyeconic-liquid-eyeliner-lakme-original-imafx4pksk6mcz4p.jpeg?q=70',
        'Makeup'),
    CategoryModel(
        'https://rukminim1.flixcart.com/image/612/612/kxp0mfk0/deodorant/c/c/g/-original-imaga36afsjdsrrp.jpeg?q=70',
        'Personal Care'),
    CategoryModel(
        'https://rukminim1.flixcart.com/image/612/612/xif0q/toilet-cleaner/p/5/c/regular-100-toilet-seat-sanitizer-spray-pleasant-fresh-fragrance-original-imaggvn8vqryydgg.jpeg?q=70',
        'Household & Cleaning'),
    CategoryModel(
        'https://rukminim1.flixcart.com/image/612/612/kf4ajrk0/kitchen-rack/h/b/v/steel-kitchen-rack-swingzy-original-imafvnmzrsp5pfvx.jpeg?q=70',
        'Home & Kitchen'),
    CategoryModel(
        'https://rukminim1.flixcart.com/image/612/612/jlv70y80/moisturizer-cream/g/a/p/400-new-milk-and-rice-lotion-200-ml-pack-of-2-johnson-s-lotion-original-imaf8wfhgh33cktq.jpeg?q=70',
        'Baby Care'),
    CategoryModel(
        'https://rukminim1.flixcart.com/image/612/612/l5iid8w0/snack-savourie/t/c/i/-original-imagg65fez3mdsf5.jpeg?q=70',
        'Snacks & Packaged Food'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: commonback,
      body: SizedBox(
        height: productitemHeight * _categoryList.length / 3,
        child: GridView.builder(
            itemCount: _categoryList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.all(10),
                    child: CircleAvatar(
                        radius: 50,
                        child: ClipOval(
                            child: Image.network(
                          _categoryList[index].image,
                          height: 0.13.sh,
                          width: 0.32.sw,
                          fit: BoxFit.cover,
                        ))),
                  ),
                  Text(_categoryList[index].pname,style: TextStyle(color: grey),)
                ],
              );
            }),
      ),
    );
  }
}

class CategoryModel {
  final image, pname;

  CategoryModel(this.image, this.pname);
}
