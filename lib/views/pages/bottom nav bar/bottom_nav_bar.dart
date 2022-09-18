import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/views/pages/Home%20Page/homepage.dart';
import 'package:ecommerce_app/views/pages/drawer/drawer.dart';
import 'package:ecommerce_app/views/pages/mapLocation/map_location.dart';
import 'package:ecommerce_app/views/pages/product%20tab%20page/producttabpage.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> screens = [
    ProductTabPage(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      extendBodyBehindAppBar: true,
      body: screens[currentindex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primarylightColor,
        // focusElevation: 5,
        // elevation: 1,

        onPressed: () {
          setState(() {
            currentindex = 4;
          });
        },
        child: Container(
          height: AppHeights.height24,
          width: AppWidths.width25,
          decoration: BoxDecoration(
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.1),
              //     spreadRadius: 0,
              //     blurRadius: 7,
              //     offset: const Offset(0, 3),
              //   ),
              // ],
              ),
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
          return Container(
            height: AppHeights.height24,
            width: AppWidths.width25,
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
