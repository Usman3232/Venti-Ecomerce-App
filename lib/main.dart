import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/all_carts.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/available_items_cart.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/checkout.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/confirmation_page.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/curated%20store%20popular/curatedstorepopular.dart';
import 'package:ecommerce_app/views/pages/CURATED%20STORES/curated%20search%20page/curatedsearchpage.dart';
import 'package:ecommerce_app/views/pages/CURATED%20STORES/curated%20store/curatedstore.dart';
import 'package:ecommerce_app/views/pages/mapLocation/map_location.dart';
import 'package:ecommerce_app/views/pages/product%20tab%20page/producttabpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'views/pages/CART & CHECKOUT/order status/negativestatus.dart';
import 'views/pages/CART & CHECKOUT/order status/positivestatus.dart';
import 'views/pages/CART & CHECKOUT/payment_checkout.dart';
import 'views/pages/Home Page/homepage.dart';
import 'views/pages/Login Page/loginpage.dart';
import 'views/pages/Search Page/search.dart';

void main() => runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => const MyApp(), // Wrap your app
    // ),
    MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              theme: ThemeData(
                scaffoldBackgroundColor: const Color(0xffFEFEFE),
              ),
              debugShowCheckedModeBanner: false,
              // home: const LoginPage(),
              // home: const HomePage(),
              // home: const SearchPage(),
              // home: const PositiveStatus(),
              // home: const NegativeStatus(),
              // home: ProductTabPage(),
              // home: const CuratedStorePopular(),
              // home: const CuratedStore(),
              // home: const CuratedSearch(),
              // home: PaymentCheckOut(),
              // home: CheckoutPage(),
              // home: AvailableCartCheckout(),
              // home: Confirmation(),
              // home: AllCartsCheckOut(),
              home: MapLocationPage(),
              // home

            );
          },
        );
      },
    );
  }
}