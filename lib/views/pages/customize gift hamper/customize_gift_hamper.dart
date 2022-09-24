import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';

import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/curated%20product%20detail/curated_product_fullimage.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class CustomizeGiftHamper extends StatefulWidget {
  const CustomizeGiftHamper({Key? key}) : super(key: key);

  @override
  State<CustomizeGiftHamper> createState() => _CustomizeGiftHamperState();
}

class _CustomizeGiftHamperState extends State<CustomizeGiftHamper> {
  List<String> chocolates = ["White", "Dark", "Milk"];
  List<String> cookies = ["Chocolate Chip", "Oreos", "Dark "];
  List<String> scent = ["Crisp and Clean", "Lavender", "Eucalyptus"];
  int isselectedchocolates = 0;
  int isselectescookies = 0;
  int isselectedscent = 0;
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                      image: AssetImage(AppImages.loginImg),
                      fit: BoxFit.cover)),
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
                          child: Icon(
                            Icons.favorite_rounded,
                            color: AppColors.primarylightColor,
                            size: SizeConfig.imageSizeMultiplier * 6,
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
                height: SizeConfig.heightMultiplier * 67,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppRadius.radius30),
                      topLeft: Radius.circular(AppRadius.radius30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 4,
                      left: AppPaddings.padding17,
                      right: AppPaddings.padding17),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextView(
                            text: "Customize Your Gift Hamper",
                            size: SizeConfig.textMultiplier * 2.29,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2B0806),
                          ),
                          TextView(
                            text: "₹506",
                            size: SizeConfig.textMultiplier * 2.85,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2B0806),
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextView(
                            text: "Organic Products by Eren",
                            size: SizeConfig.textMultiplier * 1.65,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2B0806),
                          ),
                          TextView(
                            text: "₹896",
                            size: SizeConfig.textMultiplier * 1.65,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFF4D46),
                            line: TextDecoration.lineThrough,
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.star),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 1,
                          ),
                          TextView(
                            text: "4.5",
                            size: SizeConfig.textMultiplier * 1.4,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 1,
                          ),
                          TextView(
                            text: "(1045 reviews)",
                            size: SizeConfig.textMultiplier * 1.4,
                            fontWeight: FontWeight.w400,
                            color: Colors.black26,
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      TextView(
                        text: "Description",
                        size: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2B0806),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      ReadMoreText(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacus. Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacusTristique amet, maecenas sed vitae pretium. Tristique amet, maecenas.Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacus.',
                        trimLines: 3,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read more',
                        colorClickableText: AppColors.primarydarkColor,
                        trimExpandedText: 'Read less',
                        moreStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      TextView(
                        text: "Chocolates",
                        size: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2B0806),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Row(
                        children: [
                          ...List.generate(
                              chocolates.length,
                              (index) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        isselectedchocolates = index;
                                      });
                                    },
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 7),
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.bounceInOut,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black12),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: isselectedchocolates == index
                                                ? AppColors.primarylightColor
                                                : Colors.white),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 8),
                                          child: TextView(
                                            text: chocolates[index],
                                            size: SizeConfig.textMultiplier * 1.8,
                                            fontWeight: FontWeight.w400,
                                            color: isselectedchocolates == index
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ))
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      TextView(
                        text: "Cookies ",
                        size: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2B0806),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Row(
                        children: [
                          ...List.generate(
                              chocolates.length,
                              (index) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        isselectescookies = index;
                                      });
                                    },
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 7),
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.bounceInOut,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black12),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: isselectescookies == index
                                                ? AppColors.primarylightColor
                                                : Colors.white),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 8),
                                          child: TextView(
                                            text: cookies[index],
                                            size: SizeConfig.textMultiplier * 1.8,
                                            fontWeight: FontWeight.w400,
                                            color: isselectescookies == index
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ))
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      TextView(
                        text: "Scent",
                        size: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2B0806),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            ...List.generate(
                                chocolates.length,
                                (index) => InkWell(
                                      onTap: () {
                                        setState(() {
                                          isselectedscent = index;
                                        });
                                      },
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 7),
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.bounceInOut,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black12),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: isselectedscent == index
                                                  ? AppColors.primarylightColor
                                                  : Colors.white),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 8),
                                            child: TextView(
                                              text: scent[index],
                                              size: SizeConfig.textMultiplier * 1.8,
                                              fontWeight: FontWeight.w400,
                                              color: isselectedscent == index
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 5,
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  if (num == 0) {
                                    num = num;
                                  } else {
                                    num = num - 1;
                                  }
                                });
                              },
                              child:
                                  SvgPicture.asset(AppIcons.minusbluecircle)),
                          SizedBox(width: SizeConfig.widthMultiplier * 3),
                          TextView(
                            text: num.toString(),
                            size: SizeConfig.textMultiplier * 1.53,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: SizeConfig.widthMultiplier * 3),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  num = num + 1;
                                });
                              },
                              child: SvgPicture.asset(AppIcons.addbluecircle)),
                          Spacer(),
                          CustomTextButton(
                            callback: () {},
                            colour: AppColors.primarylightColor,
                            title: "Add to Cart",
                            textcolour: Colors.white,
                            height: 52,
                            width: 218,
                            radius: 42,
                            fontSize: SizeConfig.textMultiplier * 2.04,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
