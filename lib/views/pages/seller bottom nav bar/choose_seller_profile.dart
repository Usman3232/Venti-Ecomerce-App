import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/views/pages/seller%20bottom%20nav%20bar/seller_profile.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/colors.dart';
import '../../../constants/icons.dart';
import '../../../constants/images.dart';
import '../../../constants/textsize.dart';
import '../../../utils/size_config.dart';

class ChooseSellerProfile extends StatefulWidget {
  const ChooseSellerProfile({Key? key}) : super(key: key);

  @override
  State<ChooseSellerProfile> createState() => _ChooseSellerProfileState();
}

class _ChooseSellerProfileState extends State<ChooseSellerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 27,
            width: AppWidths.widthFull,
            child: Stack(
              children: [
                SizedBox(
                  height: SizeConfig.heightMultiplier * 20.6,
                  width: SizeConfig.widthMultiplier * double.infinity,
                  child: SvgPicture.asset(
                    AppIcons.largedrawerlogo,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: SizeConfig.imageSizeMultiplier * 26.2,
                        width: SizeConfig.imageSizeMultiplier * 26.2,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primarylightColor.withOpacity(0.3),
                            border: Border.all(color: Colors.white, width: 3)),
                        child: Padding(
                          padding: EdgeInsets.all(AppPaddings.padding22),
                          child: Image.asset(AppImages.sellerHouse),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: SizeConfig.imageSizeMultiplier * 10,
                        width: SizeConfig.imageSizeMultiplier * 20,
                        child: SvgPicture.asset(AppIcons.camera),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: SizeConfig.widthMultiplier * 2.2,
                  top: SizeConfig.widthMultiplier * 13,
                  right: SizeConfig.widthMultiplier * 2.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          )),
                      Text(
                        'Seller Profile',
                        style: GoogleFonts.poppins(
                          fontSize: AppTexts.size14,
                          color: AppColors.primarydarkColor,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppPaddings.padding24,
                vertical: AppPaddings.padding8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: 'Choose Your Seller Profile',
                  color: Colors.black,
                  size: AppTexts.size13,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: AppHeights.height20,
                ),
                ChooseSellerButton(
                  text: 'AnyTime Seller',
                  onTap: () {
                    Get.to(SellerProfile());
                  },
                ),
                SizedBox(
                  height: AppHeights.height23,
                ),
                Container(
                  height: AppHeights.height52,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(AppRadius.radius10)),
                      border: Border.all(
                          color: AppColors.primarylightColor, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CustomTextButton(
                      title: 'Service Provider',
                      callback: () {
                        Get.to(SellerProfile());
                      },
                      width: AppWidths.widthFull,
                      height: AppHeights.height50,
                      colour: AppColors.primarylightColor,
                      textcolour: Colors.white,
                      fontWeight: FontWeight.w600,
                      radius: AppRadius.radius10,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppHeights.height23,
                ),
                ChooseSellerButton(
                  text: 'Curated Product Seller',
                  onTap: () {
                    Get.to(SellerProfile());
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChooseSellerButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ChooseSellerButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: AppHeights.height52,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(AppRadius.radius10)),
            border: Border.all(
              color: Colors.black12,
            )),
        child: Center(
          child: TextView(
            text: text,
            color: const Color(0xff757589),
            size: AppTexts.size12,
          ),
        ),
      ),
    );
  }
}
