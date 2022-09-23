import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/icons.dart';

import 'package:ecommerce_app/controllers/button_controller.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/drawer/drawer.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/home_page.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/map/map_location_page.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/products/product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyerBottomNavBar extends StatefulWidget {
  const BuyerBottomNavBar({Key? key}) : super(key: key);

  @override
  State<BuyerBottomNavBar> createState() => _BuyerBottomNavBarState();
}

class _BuyerBottomNavBarState extends State<BuyerBottomNavBar> {
  List<Widget> screens = [
    ProductPage(),
    Center(child: Text("SettingPage")),
    MapLocationPage(),
    Center(child: Text("3")),
    HomePage(),
  ];
  List images = [
    AppIcons.bottombagicon,
    AppIcons.bottomsettingicon,
    AppIcons.bottomlocationicon,
    AppIcons.bottomstaricon,
  ];
  List unselectedImages = [
    AppIcons.bottombagicon,
    AppIcons.bottomsettingicon,
    AppIcons.bottomlocationicon,
    AppIcons.bottomstaricon,
  ];
  int currentindex = 4;
  final buttonCont = Get.find<ButtonsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: const MyDrawer(),
      extendBodyBehindAppBar: true,
      body: screens[currentindex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primarylightColor,
        onPressed: () {
          setState(() {
            currentindex = 4;
          });
        },
        child: Container(
          height: SizeConfig.heightMultiplier * 3,
          width: SizeConfig.widthMultiplier * 6.5,
          decoration: BoxDecoration(),
          child: Image.asset(
            AppIcons.bottomhomeicon,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
        gapLocation: GapLocation.center,
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
