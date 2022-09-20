import 'package:ecommerce_app/controllers/button_controller.dart';
import 'package:ecommerce_app/utils/root.dart';
import 'package:ecommerce_app/views/pages/Login%20Page/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bottom nav bar/bottom_nav_bar.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Get.put(ButtonsController());
    Future.delayed(Duration(seconds: 2), () => Get.to(() => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
