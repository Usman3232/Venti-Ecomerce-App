import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/height.dart';
import '../../../../constants/textsize.dart';
import '../../../../constants/width.dart';
import '../../../../utils/size_config.dart';
import '../../../widgets/TextView.dart';

class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.items,
  }) : super(key: key);
  final String image, title;
  final int items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: AppHeights.height50,
          width: AppWidths.width50,
          decoration: const BoxDecoration(
              color: Color(0xffF1F4F9), shape: BoxShape.circle),
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.widthMultiplier * 3.5),
            child: SvgPicture.asset(image),
          ),
        ),
        SizedBox(
          height: AppHeights.height10,
        ),
        TextView(
          text: title,
          color: AppColors.textColor,
          fontWeight: FontWeight.w600,
          size: AppTexts.size13,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * .5,
        ),
        TextView(
          text: items.toString() + " Items",
          color: Colors.black26,
          fontWeight: FontWeight.w400,
          size: SizeConfig.textMultiplier * 1.4,
        )
      ],
    );
  }
}
