
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/views/seller%20panal/Anytime%20Sellers/any_time_seller_store.dart';
import 'package:ecommerce_app/views/seller%20panal/Curated%20Store%20Seller/curated_store_seller.dart';
import 'package:ecommerce_app/views/seller%20panal/Seller%20Home/seller_profile.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/icons.dart';
import '../../../../constants/images.dart';
import '../../../../constants/textsize.dart';
import '../../../../utils/size_config.dart';

class ChooseSellerProfile extends StatefulWidget {
  const ChooseSellerProfile({Key? key}) : super(key: key);

  @override
  State<ChooseSellerProfile> createState() => _ChooseSellerProfileState();
}

class _ChooseSellerProfileState extends State<ChooseSellerProfile> {
  int selected = 0;
  List<String> buttons = [
    'Anytime Seller',
    'Service Provider',
    'Curated Product Seller'
  ];
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
                  height: SizeConfig.heightMultiplier * 2.5,
                ),
                ...List.generate(
                  buttons.length,
                  (index) => Container(
                    margin: EdgeInsets.only(bottom: AppPaddings.padding22),
                    padding: selected == index ? const EdgeInsets.all(2) : null,
                    decoration: selected == index
                        ? BoxDecoration(
                            border:
                                Border.all(color: AppColors.primarylightColor),
                            borderRadius: BorderRadius.circular(10))
                        : null,
                    child: ChooseSellerButton(
                      text: buttons[index],
                      onTap: () {
                        setState(() {
                          selected = index;
                          if (selected == 0) {
                            Get.to(AnyTimeSellerStoreDetail());
                          } else if (selected == 2) {
                            Get.to(CuratedStoreSellerDetail());
                          }
                        });
                      },
                      color: selected == index
                          ? AppColors.primarylightColor
                          : Colors.white,
                      textColor: selected == index
                          ? Colors.white
                          : const Color(0xff757589),
                    ),
                  ),
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
  final Color color;
  final Color textColor;
  const ChooseSellerButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: SizeConfig.heightMultiplier * 6.54,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(AppRadius.radius10)),
            border: Border.all(
              color: Colors.black12,
            )),
        child: Center(
          child: TextView(
            text: text,
            color: textColor,
            size: AppTexts.size12,
          ),
        ),
      ),
    );
  }
}
