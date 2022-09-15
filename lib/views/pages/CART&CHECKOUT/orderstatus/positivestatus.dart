import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/constants/width.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding18),
        child: Column(
          children: [
            SizedBox(
              height: AppHeights.height57,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AppIcons.back),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 3,
                ),
                TextView(
                  text: "Order Status",
                  color: AppColors.primarydarkColor,
                  size: AppTexts.size15,
                  fontWeight: FontWeight.w600,
                ),
                TextView(
                  text: "Store Policy",
                  color: AppColors.primarydarkColor,
                  size: AppTexts.size14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            SizedBox(
              height: AppHeights.height57,
            ),
            SvgPicture.asset(AppIcons.tickcircle),
            SizedBox(
              height: AppHeights.height50,
            ),
            TextView(
              text: "Congratulations! Your Order has been placed successfully",
              color: AppColors.primarydarkColor,
              fontWeight: FontWeight.w600,
              size: AppTexts.size20,
            ),
            SizedBox(
              height: AppHeights.height33,
            ),
            TextView(
              text: "The Estimated Delivery time is 12 hours.",
              color: AppColors.iconColor,
              fontWeight: FontWeight.w400,
              size: AppTexts.size15,
            ),
            SizedBox(
              height: AppHeights.height50,
            ),
            CustomTextButton(
              callback: () {},
              colour: AppColors.primarylightColor,
              height: AppHeights.height52,
              width: AppWidths.width284,
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
