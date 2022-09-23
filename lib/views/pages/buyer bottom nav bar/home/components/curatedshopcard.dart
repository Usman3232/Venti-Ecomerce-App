import 'package:ecommerce_app/constants/colors.dart';

import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CuratedShopCard extends StatefulWidget {
  CuratedShopCard({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.reviews,
    required this.rating,
    required this.favourite,
    this.onpressed,
  }) : super(key: key);
  final String image, title, location;
  final int reviews;
  final double rating;
  bool favourite;
  final VoidCallback? onpressed;

  @override
  State<CuratedShopCard> createState() => _CuratedShopCardState();
}

class _CuratedShopCardState extends State<CuratedShopCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 18.8,
                width: AppWidths.width150,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(AppRadius.radius20),
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover)),
              ),
              Positioned(
                top: SizeConfig.heightMultiplier * 1.9,
                right: SizeConfig.widthMultiplier * 4.2,
                child: Container(
                    height: SizeConfig.heightMultiplier * 3.1,
                    width: AppWidths.width25,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          widget.favourite = !widget.favourite;
                        });
                      },
                      child: widget.favourite
                          ? Icon(
                              Icons.favorite_rounded,
                              color: AppColors.primarylightColor,
                              size: SizeConfig.imageSizeMultiplier * 5,
                            )
                          : Icon(
                              Icons.favorite_outline_rounded,
                              color: AppColors.primarylightColor,
                              size: SizeConfig.imageSizeMultiplier * 5,
                            ),
                    )),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 1,
          ),
          TextView(
            text: widget.title,
            fontWeight: FontWeight.w600,
            size: AppTexts.size12,
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * .4,
          ),
          TextView(
            text: widget.location,
            fontWeight: FontWeight.w400,
            size: AppTexts.size10,
            color: AppColors.primarylightColor,
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * .4,
          ),
          Row(
            children: [
              SvgPicture.asset(AppIcons.star),
              SizedBox(
                width: SizeConfig.widthMultiplier * 1.6,
              ),
              TextView(
                text: widget.rating.toString(),
                fontWeight: FontWeight.w700,
                size: AppTexts.size11,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 1.6,
              ),
              TextView(
                text: widget.reviews.toString() + "( Reviews)",
                fontWeight: FontWeight.w400,
                size: AppTexts.size11,
                color: Color(0xff7E7C7C),
              ),
            ],
          )
        ],
      ),
    );
  }
}