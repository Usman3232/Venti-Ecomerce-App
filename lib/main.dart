import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/detail_cart_product.dart';
import 'package:ecommerce_app/views/pages/add%20new%20card/add_new_card.dart';
import 'package:ecommerce_app/views/pages/merchant%20confirmation/merchant_confirmation.dart';
import 'package:ecommerce_app/views/pages/payment%20checkout/payment_checkout.dart';
import 'package:ecommerce_app/views/pages/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'views/seller panal/OrderTracking/order_status_seller.dart';

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
                scaffoldBackgroundColor: const Color(0xffFAFAFA),
              ),
              debugShowCheckedModeBanner: false,
              // home: SplashPage(),
              // home: PaymentCheckOut(),
              home: MerchantConfirmation(),
              // home: OrderStatusSeller(),
            );
          },
        );
      },
    );
  }
}
