import 'package:ecommerce_app/constants/colors.dart';

import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';

import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServiceProviderCard extends StatefulWidget {
  ServiceProviderCard({
    Key? key,
    required this.image,
    required this.title,
    required this.reviews,
    required this.rating,
    required this.favourite,
  }) : super(key: key);
  final String image, title;
  final int reviews;
  final double rating;
  bool favourite;

  @override
  State<ServiceProviderCard> createState() => _ServiceProviderCardState();
}

class _ServiceProviderCardState extends State<ServiceProviderCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 27.9,
          // width: SizeConfig.widthMultiplier * 3.80,
          width: SizeConfig.widthMultiplier * 39.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.radius20),
            image: DecorationImage(
                image: AssetImage(widget.image), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextView(
                  text: widget.title,
                  fontWeight: FontWeight.w600,
                  size: AppTexts.size13,
                  color: Colors.white,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.star),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 1.6,
                    ),
                    TextView(
                      text: widget.rating.toString(),
                      size: AppTexts.size13,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 1.6,
                    ),
                    TextView(
                      text: widget.reviews.toString() + "( Reviews)",
                      size: AppTexts.size13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffE9E8E8),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.heightMultiplier * 1.9,
          right: SizeConfig.widthMultiplier * 4.2,
          child: Container(
              height: SizeConfig.heightMultiplier * 3.1,
              width: SizeConfig.widthMultiplier * 6.5,
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
    );
  }
}
