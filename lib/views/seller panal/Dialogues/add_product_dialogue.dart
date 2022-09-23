import 'package:dotted_border/dotted_border.dart';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/radius.dart';
import '../Curated Store Seller/curated_store_seller.dart';

class AddProductDialogue extends StatelessWidget {
  const AddProductDialogue({
    Key? key,
    required this.productController,
    required this.priceController,
    required this.descriptionController,
    required this.discountController,
  }) : super(key: key);

  final TextEditingController productController;
  final TextEditingController priceController;
  final TextEditingController descriptionController;
  final TextEditingController discountController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              width: SizeConfig.widthMultiplier * 90,
              child: SingleChildScrollView(
                child: StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.2,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(CupertinoIcons.xmark)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppPaddings.padding25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1.2,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Add New Product",
                                style: TextStyle(
                                  fontSize: AppTexts.size20,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2.5,
                            ),
                            DottedBorder(
                              color: AppColors.primarylightColor,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(AppRadius.radius10),
                              child: Container(
                                height: SizeConfig.heightMultiplier * 11.9,
                                width: AppWidths.widthFull,
                                decoration: BoxDecoration(
                                  color: AppColors.primarylightColor
                                      .withOpacity(0.3),
                                  borderRadius:
                                      BorderRadius.circular(AppRadius.radius10),
                                ),
                                child: Center(
                                  child: TextView(
                                    text: 'Add Pictures',
                                    color: AppColors.primarylightColor,
                                    size: AppTexts.size14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2.5,
                            ),
                            Text(
                              "Name of Product",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: AppTexts.size14,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1,
                            ),
                            AuthTextInputField(
                              hintText: 'Product name',
                              textEditingController: productController,
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Price",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: AppTexts.size14,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.heightMultiplier * 1,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 35,
                                      child: AuthTextInputField(
                                        textEditingController: priceController,
                                        inputType: TextInputType.number,
                                        hintText: 'price',
                                        suffixIcon: Container(
                                          padding: EdgeInsets.only(
                                              top: SizeConfig.heightMultiplier * 1.75),
                                          margin: EdgeInsets.only(
                                              left: AppPaddings.padding25),
                                          child: Text(
                                            '₹',
                                            style: TextStyle(
                                                fontSize: AppTexts.size18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Discount",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: AppTexts.size14,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.heightMultiplier * 1,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 35,
                                      child: AuthTextInputField(
                                        textEditingController:
                                            discountController,
                                        inputType: TextInputType.number,
                                        hintText: 'discount',
                                        suffixIcon: Container(
                                          padding: EdgeInsets.only(
                                              top: SizeConfig.heightMultiplier * 1.75),
                                          margin: EdgeInsets.only(
                                              left: AppPaddings.padding25),
                                          child: Text(
                                            '%',
                                            style: TextStyle(
                                                fontSize: AppTexts.size18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1.75,
                            ),
                            Text(
                              "Category",
                              style: TextStyle(
                                fontSize: AppTexts.size14,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1,
                            ),
                            ExpansionTile(
                                textColor: Colors.black,
                                iconColor: Colors.black,
                                title: Text(
                                  "Glasses",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: AppTexts.size14,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                  ),
                                )),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1,
                            ),
                            Text("Discription",
                                style: TextStyle(
                                  fontSize: AppTexts.size14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1,
                                )),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1.2,
                            ),
                            AuthTextInputField(
                              hintText: 'description',
                              maxLine: 3,
                              textEditingController: descriptionController,
                            ),
                            const CustomColorWidget(),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 7.1,
                            ),
                            CustomTextButton(
                              callback: () {},
                              title: 'SAVE PRODUCT',
                              textcolour: Colors.white,
                              colour: AppColors.primarylightColor,
                              radius: AppRadius.radius20,
                              height: SizeConfig.heightMultiplier * 5.65,
                              width: double.infinity,
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 4.7,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ))),
    );
  }
}
