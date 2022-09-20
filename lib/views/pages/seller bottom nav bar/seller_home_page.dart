import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/seller%20bottom%20nav%20bar/choose_seller_profile.dart';
import 'package:ecommerce_app/views/pages/seller%20bottom%20nav%20bar/seller_availability.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';

class SellerHomePage extends StatefulWidget {
  const SellerHomePage({Key? key}) : super(key: key);

  @override
  State<SellerHomePage> createState() => _SellerHomePageState();
}

class _SellerHomePageState extends State<SellerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: AppTexts.size20,
        ),
        title: Text(
          "VENTI - SELLER",
          style: TextStyle(
            color: AppColors.primarydarkColor,
            fontSize: AppTexts.size15,
            fontWeight: FontWeight.w600,
            letterSpacing: 4,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.to(ChooseSellerProfile());
            },
            child: Container(
              height: AppHeights.height27,
              width: AppWidths.width25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primarydarkColor.withOpacity(0.15),
              ),
              child: Icon(
                Icons.add,
                size: 20,
                color: AppColors.primarydarkColor,
              ),
            ),
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier * 2,
          ),
          SvgPicture.asset(AppIcons.message),
          SizedBox(
            width: SizeConfig.widthMultiplier * 2,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: AppHeights.height21,
            ),
            VentiSellerCardWidget(
              image: AppImages.sellerHouse,
              title: 'Store Name',
              buttonText: 'COMPLETE PROFILE',
              isSubtitle: true,
              subtitle: 'Type - Curated Store',
              subtitleColor: AppColors.primarydarkColor,
              buttonSize: 7,
            ),
            SizedBox(
              height: AppHeights.height18,
            ),
            InkWell(
              onTap: () {
                Get.to(SellerAvailability());
              },
              child: VentiSellerCardWidget(
                image: AppImages.sellerAlarm,
                title: 'Availabilty Times',
                buttonText: 'EDIT',
                isSubtitle: true,
                subtitle: '2:00 - 6:00 PM',
                isSwitch: true,
              ),
            ),
            SizedBox(
              height: AppHeights.height18,
            ),
            VentiSellerCardWidget(
              image: AppImages.sellerOrder,
              title: 'Orders',
              buttonText: 'VIEW',
              isSubtitle: true,
              subtitle: '0 Orders',
            ),
            SizedBox(
              height: AppHeights.height18,
            ),
            VentiSellerCardWidget(
              image: AppImages.storeDetails,
              title: 'Store Details',
              buttonText: 'ADD',
            ),
            SizedBox(
              height: AppHeights.height18,
            ),
            VentiSellerCardWidget(
              image: AppImages.storePolicy,
              title: 'Store Policy',
              buttonText: 'ADD',
            ),
            SizedBox(
              height: AppHeights.height18,
            ),
            VentiSellerCardWidget(
              image: AppImages.reports,
              title: 'Reports',
              buttonText: 'ADD',
            ),
          ],
        ),
      ),
    );
  }
}

class VentiSellerCardWidget extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String buttonText;
  final bool isSubtitle;
  final bool isSwitch;
  final Color subtitleColor;
  final double buttonSize;
  const VentiSellerCardWidget({
    Key? key,
    required this.image,
    required this.title,
    this.subtitle = '',
    required this.buttonText,
    this.isSubtitle = false,
    this.isSwitch = false,
    this.subtitleColor = Colors.grey,
    this.buttonSize = 10,
  }) : super(key: key);

  @override
  State<VentiSellerCardWidget> createState() => _VentiSellerCardWidgetState();
}

class _VentiSellerCardWidgetState extends State<VentiSellerCardWidget> {
  bool isStatus = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppRadius.radius10)),
      ),
      child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppRadius.radius10)),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppPaddings.padding8,
          ),
          tileColor: Colors.white,
          leading: Container(
            height: AppHeights.height50,
            width: AppWidths.width50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xff7496C2).withOpacity(0.3),
            ),
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.widthMultiplier * 1.6),
              child: Image.asset(
                widget.image,
                height: AppHeights.height30,
                width: AppWidths.width30,
              ),
            ),
          ),
          title: Text(
            widget.title,
            style: TextStyle(
              fontSize: AppTexts.size14,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
              color: Colors.black,
            ),
          ),
          subtitle: widget.isSubtitle
              ? Text(
                  widget.subtitle,
                  style: TextStyle(
                    fontSize: AppTexts.size10,
                    fontWeight: FontWeight.w600,
                    color: widget.subtitleColor,
                  ),
                )
              : const Text(''),
          trailing: widget.isSwitch
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppHeights.height20,
                      width: SizeConfig.widthMultiplier * 9,
                      child: FlutterSwitch(
                        switchBorder:
                            Border.all(color: AppColors.primarydarkColor),
                        activeColor: Colors.white,
                        padding: 3,
                        inactiveColor: Colors.white,
                        activeToggleColor: AppColors.primarydarkColor,
                        inactiveToggleColor: AppColors.primarylightColor,
                        toggleSize: SizeConfig.widthMultiplier * 3,
                        value: isStatus,
                        borderRadius: AppRadius.radius20,
                        onToggle: (value) {
                          setState(() {
                            isStatus = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: AppHeights.height10,
                    ),
                    Expanded(
                      child: CustomTextButton(
                        title: widget.buttonText,
                        callback: () {},
                        height: AppHeights.height27,
                        colour: const Color(0xffE3EAF3),
                        textcolour: AppColors.primarydarkColor,
                        fontSize: widget.buttonSize,
                        fontWeight: FontWeight.w600,
                        radius: AppRadius.radius30,
                      ),
                    ),
                  ],
                )
              : CustomTextButton(
                  title: widget.buttonText,
                  callback: () {},
                  height: AppHeights.height27,
                  colour: const Color(0xffE3EAF3),
                  textcolour: AppColors.primarydarkColor,
                  fontSize: widget.buttonSize,
                  fontWeight: FontWeight.w600,
                  radius: AppRadius.radius30,
                )),
    );
  }
}
