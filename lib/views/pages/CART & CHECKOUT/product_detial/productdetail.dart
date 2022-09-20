import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.product}) : super(key: key);
  final product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: SizeConfig.heightMultiplier * 40.9,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(product.image), fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: AppHeights.height66,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              height: SizeConfig.heightMultiplier * 3.8,
                              width: SizeConfig.widthMultiplier * 7.7,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Padding(
                                padding: EdgeInsets.all(
                                    SizeConfig.widthMultiplier * 1.8),
                                child: SvgPicture.asset(
                                  AppIcons.back,
                                  color: AppColors.primarylightColor,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: SizeConfig.heightMultiplier * 3.8,
                            width: SizeConfig.widthMultiplier * 7.7,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  SizeConfig.widthMultiplier * 1.8),
                              child: SvgPicture.asset(
                                AppIcons.message,
                                color: AppColors.primarylightColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 1.7,
                          ),
                          Container(
                            height: SizeConfig.heightMultiplier * 3.8,
                            width: SizeConfig.widthMultiplier * 7.7,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.all(
                                  SizeConfig.widthMultiplier * 1.6),
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    AppIcons.cart,
                                    color: AppColors.primarylightColor,
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          AppColors.primarylightColor,
                                      radius: SizeConfig.widthMultiplier * 1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: AppHeights.height525,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppRadius.radius30),
                      topLeft: Radius.circular(AppRadius.radius30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppPaddings.padding17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
