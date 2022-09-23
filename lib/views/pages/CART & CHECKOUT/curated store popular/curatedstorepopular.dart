import 'package:ecommerce_app/constants/colors.dart';

import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';

import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CuratedStorePopular extends StatefulWidget {
  const CuratedStorePopular({Key? key}) : super(key: key);

  @override
  State<CuratedStorePopular> createState() => _CuratedStorePopularState();
}

class _CuratedStorePopularState extends State<CuratedStorePopular> {
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
                        image: AssetImage('assets/images/curatedpopular.png'),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 8.2,
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
              top: SizeConfig.heightMultiplier * 13.7,
              child: Image.asset("assets/images/RalphLauren.png"),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: SizeConfig.heightMultiplier * 6.545,
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
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 4.3,
                      ),
                      TextView(
                        text: "Ralph Lauren",
                        size: AppTexts.size20,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.2,
                      ),
                      TextView(
                        text: "Store Policy",
                        size: AppTexts.size16,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 4.6,
                      ),
                      Container(
                        width: SizeConfig.widthMultiplier * 82.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(AppRadius.radius15)),
                          border: Border.all(
                            color: Color(0xffCFCFCF),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.all(SizeConfig.widthMultiplier * 3),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacus. Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: AppTexts.size10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
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
