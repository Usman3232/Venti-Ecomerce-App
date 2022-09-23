import 'package:ecommerce_app/constants/colors.dart';

import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/models/chat_model/chat_model.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/view%20invoice/view_invoice.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool isattachment = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.iconColor,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: SizeConfig.widthMultiplier * 7,
                backgroundImage: AssetImage(AppImages.loginImg),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: "Ralph Lauren",
                    fontWeight: FontWeight.w600,
                    size: AppTexts.size16,
                    color: Color(0xff2B0806),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: SizeConfig.widthMultiplier * 1,
                        backgroundColor: Colors.green,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 1,
                      ),
                      TextView(
                        text: "Online",
                        fontWeight: FontWeight.w400,
                        size: AppTexts.size12,
                        color: Color(0xff896C6B),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                color: AppColors.iconColor,
              ),
            ),
          ]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding25),
        child: Container(
            child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: chat_model.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: AppPaddings.padding15),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 70),
                      child: Align(
                        alignment: chat_model[index].isme
                            ? Alignment.bottomRight
                            : Alignment.bottomLeft,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(AppRadius.radius15),
                              color: chat_model[index].isme
                                  ? Color(0xffE9E6E6)
                                  : AppColors.primarylightColor),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: AppPaddings.padding15,
                                horizontal: AppPaddings.padding19),
                            child: TextView(
                              text: chat_model[index].message,
                              fontWeight: FontWeight.w400,
                              size: AppTexts.size14,
                              color: chat_model[index].isme
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            isattachment
                ? Padding(
                    padding: EdgeInsets.only(
                      bottom: AppPaddings.padding25 * 2,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: SizeConfig.heightMultiplier * 7.7,
                          width: AppWidths.width284,
                          decoration: BoxDecoration(
                              color: Color(0xffE3EAF3),
                              borderRadius:
                                  BorderRadius.circular(AppRadius.radius15),
                              border: Border.all(
                                  color: AppColors.primarylightColor)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: SizeConfig.heightMultiplier * 2,
                                bottom: SizeConfig.heightMultiplier * .5),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        "assets/icons/attachment.svg"),
                                    TextView(
                                      text: "Invoice -",
                                      fontWeight: FontWeight.w400,
                                      size: AppTexts.size20,
                                      color: AppColors.primarylightColor,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: AppWidths.width15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(ViewInvoice());
                          },
                          child: TextView(
                            text: "Click to\nview",
                            fontWeight: FontWeight.w400,
                            size: AppTexts.size10,
                          ),
                        )
                      ],
                    ),
                  )
                : SizedBox(),
            Row(
              children: [
                Flexible(
                  child: SizedBox(
                    child: AuthTextInputField(
                      prefixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isattachment = !isattachment;
                            });
                          },
                          icon:
                              SvgPicture.asset("assets/icons/attachment.svg")),
                      hintText: "Type a message",
                      hintSize: AppTexts.size14,
                      hintcolor: Color(0xffA5A2A2),
                      fillColor: Color(0xffE9E6E6),
                      isoutline: true,
                      radius: AppRadius.radius30,
                      bordercolor: Colors.transparent,
                      enabledbordercolor: Colors.transparent,
                      focusedbordercolor: Colors.transparent,
                      contentpadding: EdgeInsets.all(
                        AppPaddings.padding15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 4,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: SizeConfig.heightMultiplier * 6.3,
                      width: AppWidths.width50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primarylightColor),
                      child: Icon(
                        Icons.mic_none_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}