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
                height: SizeConfig.heightMultiplier * 55,
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
                height: SizeConfig.heightMultiplier * 57.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppRadius.radius30),
                      topLeft: Radius.circular(AppRadius.radius30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.padding17,
                      vertical: SizeConfig.heightMultiplier * 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TextView(
                            text: 'Piqué Polo Shirt',
                            fontWeight: FontWeight.w600,
                            size: AppTexts.size18,
                          ),
                          Spacer(),
                          TextView(
                            text: "₹" + product.price,
                            size: AppTexts.size20,
                            fontWeight: FontWeight.w600,
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Row(
                        children: [
                          TextView(
                            text: 'Ralph Lauren',
                            fontWeight: FontWeight.w600,
                            size: AppTexts.size13,
                            color: Color(0xff2B0806),
                          ),
                          Spacer(),
                          TextView(
                            text: "₹3,896",
                            size: AppTexts.size13,
                            fontWeight: FontWeight.w600,
                            line: TextDecoration.lineThrough,
                            color: Color(0xffFF4D46),
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.5,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.star),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * .5,
                          ),
                          TextView(
                            text: product.rating.toString(),
                            size: AppTexts.size11,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * .5,
                          ),
                          TextView(
                            text:
                                "(" + product.reviews.toString() + " reviews)",
                            size: AppTexts.size11,
                            fontWeight: FontWeight.w700,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.5,
                      ),
                      TextView(
                        text: "Description",
                        size: AppTexts.size14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2B0806),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      TextView(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacus.....",
                        size: AppTexts.size13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff896C6B),
                      ),
                      SizedBox(
                        height: AppHeights.height10,
                      ),
                      TextView(
                        text: "Color",
                        size: AppTexts.size14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2B0806),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                    ],
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
