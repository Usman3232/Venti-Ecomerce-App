import 'package:ecommerce_app/constants/colors.dart';

import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';

import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/checkout_add_new_address.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/curated%20store%20popular/curatedstorepopular.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/order%20status/negativestatus.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SingingCharacter { A, B, C }

class PaymentCheckOut extends StatefulWidget {
  const PaymentCheckOut({Key? key}) : super(key: key);

  @override
  State<PaymentCheckOut> createState() => _PaymentCheckOutState();
}

class _PaymentCheckOutState extends State<PaymentCheckOut> {
  SingingCharacter? _character = SingingCharacter.A;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: SizeConfig.imageSizeMultiplier * 4.5,
            )),
        title: Text(
          "Payment",
          style: TextStyle(
            color: AppColors.primarydarkColor,
            fontSize: AppTexts.size15,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 2,
                right: SizeConfig.widthMultiplier * 4),
            child: InkWell(
              onTap: () {
                Get.to(CuratedStorePopular());
              },
              child: Text(
                "Store Policy",
                style: TextStyle(
                  color: AppColors.primarylightColor,
                  fontSize: AppTexts.size14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: SizeConfig.widthMultiplier * 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppRadius.radius15),
                    ),
                    border: Border.all(color: AppColors.primarydarkColor),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      'Credit Card ',
                      style: TextStyle(
                        color: const Color(0xff2B0806).withOpacity(0.8),
                        fontSize: AppTexts.size14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    collapsedTextColor: Colors.black,
                    iconColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    children: [
                      Column(
                        children: [
                          ListTile(
                            leading: Image.asset(
                              AppImages.cardLogo,
                              height: SizeConfig.heightMultiplier * 3.4,
                              width: SizeConfig.widthMultiplier * 9,
                            ),
                            title: Text(
                              " ****  ****  ****  4567",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: AppTexts.size12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing: Radio(
                              value: SingingCharacter.A,
                              activeColor: AppColors.primarylightColor,
                              overlayColor:
                                  MaterialStateProperty.all(Colors.white),
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            leading: Image.asset(
                              AppImages.visa,
                              height: SizeConfig.heightMultiplier * 3.4,
                              width: SizeConfig.widthMultiplier * 9,
                            ),
                            title: Text(
                              " ****  ****  ****  4567",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: AppTexts.size12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing: Radio(
                              value: SingingCharacter.B,
                              activeColor: AppColors.primarylightColor,
                              overlayColor:
                                  MaterialStateProperty.all(Colors.white),
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            leading: Image.asset(
                              AppImages.american,
                              height: SizeConfig.heightMultiplier * 3.4,
                              width: SizeConfig.widthMultiplier * 9,
                            ),
                            title: Text(
                              " ****  ****  ****  4567",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: AppTexts.size12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing: Radio(
                              value: SingingCharacter.C,
                              activeColor: AppColors.primarylightColor,
                              overlayColor:
                                  MaterialStateProperty.all(Colors.white),
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 6.3,
                            width: SizeConfig.widthMultiplier * 68,
                            child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const CARDACTIVATION()));
                                  Get.to(AddNewAddressCheckOut());
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        style: BorderStyle.none,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(AppRadius.radius10))),
                                  primary: AppColors.primarylightColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 1,
                                    ),
                                    Text(
                                      'Add new card',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: AppTexts.size12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 3.4,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2.5,
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 100,
                  child: AuthTextInputField(
                    radius: SizeConfig.widthMultiplier * 3.8,
                    bordercolor: Colors.black,
                    hintText: 'COD/Pay at Premises',
                    isoutline: true,
                    hintSize: SizeConfig.textMultiplier * 1.6,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 100,
                  child: AuthTextInputField(
                    radius: SizeConfig.widthMultiplier * 3.8,
                    bordercolor: Colors.black,
                    hintText: 'Paypal',
                    isoutline: true,
                    hintSize: SizeConfig.textMultiplier * 1.6,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2.2,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 150,
                width: SizeConfig.widthMultiplier * 100,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(AppRadius.radius10),
                    topLeft: Radius.circular(AppRadius.radius10),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: AppTexts.size14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '\$550.69',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: AppTexts.size25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2.5,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 7.7,
                        width: SizeConfig.widthMultiplier * 100,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(NegativeStatus());
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    style: BorderStyle.none,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(AppRadius.radius30))),
                              primary: AppColors.primarylightColor,
                            ),
                            child: Text(
                              'PAY NOW',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: AppTexts.size16,
                                fontWeight: FontWeight.w700,
                              ),
                            )),
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
