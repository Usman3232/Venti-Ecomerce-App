import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/height.dart';
import '../../../../constants/icons.dart';
import '../../../../constants/padding.dart';
import '../../../../constants/radius.dart';
import '../../../../constants/textsize.dart';
import '../../../../constants/width.dart';
import '../../../../utils/size_config.dart';
import '../../../widgets/TextView.dart';

class HomeSpecialForYouCard extends StatefulWidget {
  HomeSpecialForYouCard({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.reviews,
    required this.rating,
    required this.favourite,
  }) : super(key: key);
  final String image, title, location;
  final int reviews;
  final double rating;
  bool favourite;

  @override
  State<HomeSpecialForYouCard> createState() => _HomeSpecialForYouCardState();
}

class _HomeSpecialForYouCardState extends State<HomeSpecialForYouCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 151,
              width: 149,
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
                  height: AppHeights.height25,
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
          height: AppHeights.height8,
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
    );
  }
}
