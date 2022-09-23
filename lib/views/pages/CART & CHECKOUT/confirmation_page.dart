import 'package:ecommerce_app/constants/colors.dart';

import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: SizeConfig.imageSizeMultiplier * 5,
              color: Colors.black,
            ),
          ), //size5
          title: Text(
            'Confirmation',
            style: TextStyle(
              color: AppColors.primarydarkColor,
              fontWeight: FontWeight.w600,
              fontSize: AppTexts.size15,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.heightMultiplier * 2,
                  right: SizeConfig.widthMultiplier * 4),
              child: Text(
                'Store Policy',
                style: TextStyle(
                  color: AppColors.primarylightColor,
                  fontWeight: FontWeight.w400,
                  fontSize: AppTexts.size14,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 7.5),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.2,
              ),
              Text(
                'Hi there, we have received your order! We’re just checking with the seller and will let you know as soon as the seller confirms! ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: AppTexts.size15,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 5.65,
              ),
              Image.asset(
                AppImages.timer,
                height: SizeConfig.heightMultiplier * 34,
                width: SizeConfig.widthMultiplier * 67,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 5.95,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Confirmation Time",
                  style: TextStyle(
                    fontSize: AppTexts.size15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: AppColors.primarylightColor,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              Text(
                "02:39",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: AppTexts.size20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 5.95,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 6.3,
                width: AppWidths.width150,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(AppRadius.radius30))),
                      primary: const Color(0xffFFEDEF),
                    ),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: const Color(0xffFF4C5E),
                        fontSize: AppTexts.size14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
