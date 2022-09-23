import 'package:ecommerce_app/constants/colors.dart';

import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';

import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PositiveStatus extends StatelessWidget {
  const PositiveStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(AppPaddings.padding19),
          child: SvgPicture.asset(AppIcons.back),
        ),
        title: TextView(
          text: "Order Status",
          color: AppColors.primarydarkColor,
          size: AppTexts.size15,
          fontWeight: FontWeight.w600,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 2,
                right: SizeConfig.widthMultiplier * 4),
            child: TextView(
              text: "Store Policy",
              color: AppColors.primarydarkColor,
              size: AppTexts.size14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding18),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 7.1,
            ),
            SvgPicture.asset(AppIcons.tickcircle),
            SizedBox(
              height: SizeConfig.heightMultiplier * 6.3,
            ),
            TextView(
              text: "Congratulations! Your Order has been placed successfully",
              color: AppColors.primarydarkColor,
              fontWeight: FontWeight.w600,
              size: AppTexts.size20,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 4.1,
            ),
            TextView(
              text: "The Estimated Delivery time is 12 hours.",
              color: AppColors.iconColor,
              fontWeight: FontWeight.w400,
              size: AppTexts.size15,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 6.3,
            ),
            CustomTextButton(
              callback: () {},
              colour: AppColors.primarylightColor,
              height: SizeConfig.heightMultiplier * 6.54,
              width: SizeConfig.widthMultiplier * 72.5,
              radius: 35,
              title: "Live Track",
              fontSize: AppTexts.size16,
              textcolour: Colors.white,
              fontWeight: FontWeight.w700,
            )
          ],
        ),
      ),
    );
  }
}
