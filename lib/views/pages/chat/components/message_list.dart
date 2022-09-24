import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';

import 'package:ecommerce_app/models/chat_model/chat_model.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                      borderRadius: BorderRadius.circular(AppRadius.radius15),
                      color: chat_model[index].isme
                          ? const Color(0xffE9E6E6)
                          : AppColors.primarylightColor),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: AppPaddings.padding15,
                        horizontal: AppPaddings.padding19),
                    child: TextView(
                      text: chat_model[index].message,
                      fontWeight: FontWeight.w400,
                      size: SizeConfig.textMultiplier * 1.8,
                      color:
                          chat_model[index].isme ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
