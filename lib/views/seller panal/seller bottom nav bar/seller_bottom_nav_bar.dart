import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:ecommerce_app/constants/icons.dart';

import 'package:ecommerce_app/controllers/button_controller.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/drawer/drawer.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/map/map_location_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Seller Home/seller_home_page.dart';

class SellerBottomNavBar extends StatefulWidget {
  const SellerBottomNavBar({Key? key}) : super(key: key);

  @override
  State<SellerBottomNavBar> createState() => _SellerBottomNavBarState();
}

class _SellerBottomNavBarState extends State<SellerBottomNavBar> {
  List<Widget> screens = [
    SellerHomePage(),
    Center(child: Text("SettingPage")),
    MapLocationPage(),
    Center(child: Text("3")),
  ];
  List images = [
    AppIcons.sellerbottomhome,
    AppIcons.sellerbottomwallet,
    AppIcons.sellerbottomcomponents,
    AppIcons.sellerbottomlocate,
  ];
  List unselectedImages = [
    AppIcons.sellerbottomhome,
    AppIcons.sellerbottomwallet,
    AppIcons.sellerbottomcomponents,
    AppIcons.sellerbottomlocate,
  ];
  int currentindex = 3;
  final buttonCont = Get.find<ButtonsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      extendBodyBehindAppBar: true,
      body: screens[currentindex],
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: images.length,
        tabBuilder: (index, isActive) {
          final color = isActive ? Colors.blue : Colors.grey;
          final image = isActive ? images[index] : unselectedImages[index];
          return SizedBox(
            height: SizeConfig.heightMultiplier * 3,
            width: SizeConfig.widthMultiplier * 6.5,
            child: Image.asset(
              image,
              color: color,
            ),
          );
        },
        activeIndex: currentindex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 15,
        rightCornerRadius: 15,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}
