import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/padding.dart';
import '../../../../constants/width.dart';
import '../../../../models/checkout_model/all_cart_checkout_model.dart';
import '../../../../utils/size_config.dart';

class ViewInvoice extends StatefulWidget {
  const ViewInvoice({Key? key}) : super(key: key);

  @override
  State<ViewInvoice> createState() => _ViewInvoiceState();
}

class _ViewInvoiceState extends State<ViewInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: SizeConfig.heightMultiplier * 13.7,
        width: AppWidths.widthFull,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextButton(
              callback: () {},
              radius: 20,
              title: 'ACCEPT',
              height: SizeConfig.heightMultiplier * 5.65,
              width: AppWidths.width135,
              colour: AppColors.primarylightColor,
            ),
            CustomTextButton(
              callback: () {},
              radius: 20,
              title: 'Reject',
              textcolour: AppColors.primarydarkColor,
              height: SizeConfig.heightMultiplier * 5.65,
              width: AppWidths.width135,
              colour: const Color(0xffF1F4F9),
            ),
          ],
        ),
      ),
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
            color: Colors.black,
            size: SizeConfig.imageSizeMultiplier * 5,
          ),
        ),
        title: TextView(
          text: 'Invoice',
          color: AppColors.primarydarkColor,
          size: AppTexts.size15,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: AppPaddings.padding24,
              top: AppPaddings.padding13,
              right: AppPaddings.padding24),
          child: Column(
            children: [
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listAllCart.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(bottom: AppPaddings.padding24),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                height: SizeConfig.heightMultiplier * 18,
                                width: AppWidths.width88,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: AppColors.primarydarkColor
                                      .withOpacity(0.1),
                                ),
                                child: Image.asset(
                                  listAllCart[index].image,
                                  height: SizeConfig.heightMultiplier * 6.3,
                                  width: AppWidths.width64,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jordan 1 Retro High Tie Dye',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: AppTexts.size14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 0.5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${listAllCart[index].company} . ${listAllCart[index].color} . ${listAllCart[index].size}',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: AppTexts.size12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Spacer(),
                                      const Text(
                                        'x1',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 1.2,
                                  ),
                                  Text(
                                    '\$${listAllCart[index].price}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: AppTexts.size14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: "Subtotal",
                    size: AppTexts.size14,
                    fontWeight: FontWeight.w600,
                  ),
                  TextView(
                    text: "\$610.19",
                    size: AppTexts.size14,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: "Shipping costs",
                    size: AppTexts.size14,
                    fontWeight: FontWeight.w600,
                  ),
                  TextView(
                    text: "\$14.09",
                    size: AppTexts.size14,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: "Voucher",
                    size: AppTexts.size14,
                    fontWeight: FontWeight.w600,
                  ),
                  TextView(
                    text: "-\$10.00",
                    size: AppTexts.size14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primarylightColor,
                  )
                ],
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: "Grand Total",
                    size: AppTexts.size17,
                    fontWeight: FontWeight.w600,
                  ),
                  TextView(
                    text: "\$705.00",
                    size: AppTexts.size20,
                    fontWeight: FontWeight.w700,
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}