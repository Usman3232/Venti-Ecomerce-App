import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/controllers/button_controller.dart';
import 'package:ecommerce_app/views/pages/seller%20bottom%20nav%20bar/seller_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SellerBottomNavBar extends StatefulWidget {
  const SellerBottomNavBar({Key? key}) : super(key: key);

  @override
  State<SellerBottomNavBar> createState() => _SellerBottomNavBarState();
}

class _SellerBottomNavBarState extends State<SellerBottomNavBar> {
  int currentIndex = 0;
  final screens = [
    SellerHomePage(),
    Center(child: Text('2')),
    Center(child: Text('3')),

    Center(child: Text('4')),

    // HomeScreen(),
    // FavouriteScreen(),
    // CartScreen(),
    // NotificationScreen(),
    // ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
        // children: [
        //   Center(
        //     child: TextButton(
        //         onPressed: () {
        //           Get.find<ButtonsController>().isSellerPanel.value = false;
        //         },
        //         child: Text("Go Buyer Panel")),
        //   )
        // ],
      ),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: AppColors.primarylightColor,
        unselectedItemColor: Colors.black26,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Icon(Icons.home_filled),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Icon(Icons.wallet_outlined),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Icon(Icons.timer_sharp),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Icon(Icons.my_location_outlined),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
