import 'package:ecommerce_website_logo3_8_22/controller/fetch_category_controller.dart';
import 'package:ecommerce_website_logo3_8_22/controller/fetch_company_controller.dart';
import 'package:ecommerce_website_logo3_8_22/controller/fetch_country_controller.dart';
import 'package:ecommerce_website_logo3_8_22/views/Splashscreen/splash_scrn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            theme: ThemeData(
              primarySwatch: Colors.green,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: const SplashScreen(),
            initialBinding: BindingsBuilder(() {
              Get.put(FetchCompanyController());
              Get.put(FetchCountryController());
              Get.put(FetchCategoryController());
              // Get.put(FetchCountryStateController());
            }));
      },
      child: const SplashScreen(),
      //child: const Reg(),
    );
  }
}
