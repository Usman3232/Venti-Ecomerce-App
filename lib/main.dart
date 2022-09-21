import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/order%20history/order_history.dart';
import 'package:ecommerce_app/views/pages/payment%20method/payment_method.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/all_carts.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/available_items_cart.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/checkout.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/confirmation_page.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/detail_cart_product.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/map/map_location_page.dart';
import 'package:ecommerce_app/views/pages/livetracking/components/map_delivery_address.dart';
import 'package:ecommerce_app/views/pages/livetracking/live_tracking_detail.dart';
import 'package:ecommerce_app/views/pages/livetracking/live_tracking_map.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/products/product_page.dart';
import 'package:ecommerce_app/views/pages/seller%20bottom%20nav%20bar/seller_bottom_nav_bar.dart';
import 'package:ecommerce_app/views/pages/splash/splash.dart';
import 'package:ecommerce_app/views/pages/store_detail/storedetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'views/pages/profile/my_profile.dart';
import 'views/pages/CART & CHECKOUT/checkout_add_new_address.dart';
import 'views/pages/CART & CHECKOUT/order status/negativestatus.dart';
import 'views/pages/CART & CHECKOUT/order status/positivestatus.dart';
import 'views/pages/CART & CHECKOUT/payment_checkout.dart';
import 'views/pages/stores/stores.dart';

void main() => runApp(

    //BISMILLAH
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
              theme: ThemeData(
                scaffoldBackgroundColor: const Color(0xffFEFEFE),
              ),
              debugShowCheckedModeBanner: false,
              // home: const LoginPage(),
              // home: SplashPage(),
              // home: const HomePage(),
              // home: const SearchPage(),
              // home: const PositiveStatus(),
              // home: const NegativeStatus(),
              // home: ProductPage(),
              // home: const StoresPopular(),
              // home: const Stores(),
              // home: const StoreSearch(),
              // home: PaymentCheckOut(),
              // home: CheckoutPage(),
              // home: AvailableCartCheckout(),
              // home: Confirmation(),
              // home: AllCartsCheckOut(),
              // home: MapLocationPage(),
              // home: LiveTrackingDetail(),
              // home: LiveTrackingMap(),
              // home: BuyerBottomNavBar(),
              // home: SplashPage(),

              // home: AllCartsCheckOut(
              // ischeckout: false,
              // ),
              // home:AvailableCartCheckout(),
              // home: DetailCartProduct(),
              // home: AllCartsCheckOut(ischeckout: true),
              // home: PaymentCheckOut(),
              // home: SellerBottomNavBar(),
              // home: SplashPage(),
              // home: AddNewAddressCheckOut(),
              // home: PaymentMethod(),
              // home: MapLocationPage(),
              // home: Stores(
              //   title: "Curated Stores",
              //   isstore: "iscurated",
              // ),
              home: StoreDetail(),
            );
          },
        );
      },
    );
  }
}
