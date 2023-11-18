import 'package:flutter/material.dart';
import 'package:restaurant_app/splashscreen/splashscreen.dart';
import 'package:get/get.dart';

import 'Authorization/controller/authController.dart';
import 'home/controllers/homePageController.dart';

void main() {
  Get.put(AuthController());
  Get.put(HomePageController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Restaurant App',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}






