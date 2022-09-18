import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_image_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFAFAFA),
      body: Container(
        height: SizeConfig.heightMultiplier * 100,
        // width: SizeConfig.widthMultiplier * 100,
        child: Stack(
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 40,
              width: SizeConfig.widthMultiplier * 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.loginImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.heightMultiplier * 12,
              left: SizeConfig.widthMultiplier * 8.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: "Login",
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    size: SizeConfig.textMultiplier * 3.8,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1.3,
                  ),
                  TextView(
                    text: "Please sign up to your Venti Account",
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    size: SizeConfig.textMultiplier * 1.8,
                  ),
                ],
              ),
            ),
            Positioned(
              top: SizeConfig.heightMultiplier * 26.3,
              left: SizeConfig.widthMultiplier * 6.5,
              right: SizeConfig.widthMultiplier * 6.5,
              child: Container(
                height: SizeConfig.heightMultiplier * 71.3,
                width: SizeConfig.widthMultiplier * 91.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppRadius.radius24),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.padding24,
                      vertical: AppPaddings.padding24 * 1.2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextView(
                        text: "Email",
                        color: AppColors.textColor,
                        size: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.5,
                      ),
                      AuthTextInputField(
                        hintText: "Enter Your Email",
                        hintSize: SizeConfig.textMultiplier * 1.8,
                        textColor: Colors.black,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3.5,
                      ),
                      TextView(
                        text: "Password",
                        color: AppColors.textColor,
                        size: SizeConfig.textMultiplier * 1.8,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.5,
                      ),
                      AuthTextInputField(
                        hintText: "Enter Your Password",
                        hintSize: SizeConfig.textMultiplier * 1.8,
                        textColor: Colors.black,
                        isPassword: true,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 14,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Dont have an Account?',
                                  style: TextStyle(
                                      fontSize: SizeConfig.textMultiplier * 1.8,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black38)),
                              TextSpan(
                                  text: ' Create Now',
                                  style: TextStyle(
                                      fontSize: SizeConfig.textMultiplier * 1.8,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff425D81))),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2.3,
                      ),
                      CustomTextButton(
                        callback: () {},
                        radius: 90,
                        height: SizeConfig.heightMultiplier * 5.5,
                        // width: 273,
                        width: SizeConfig.widthMultiplier * 74,
                        colour: const Color(0xff7496C2),
                        title: "LOGIN",
                        textcolour: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: AppTexts.size13,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageButton(
                            callback: () {},
                            radius: 90,
                            height: SizeConfig.heightMultiplier * 5.5,
                            width: SizeConfig.widthMultiplier * 36,
                            colour: const Color(0xffD3493C),
                            image: AppIcons.google,
                          ),
                          CustomImageButton(
                            callback: () {},
                            radius: 90,
                            height: SizeConfig.heightMultiplier * 5.5,
                            width: SizeConfig.widthMultiplier * 36,
                            colour: const Color(0xff1871E5),
                            image: AppIcons.facebook,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}