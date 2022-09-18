import 'package:flutter/material.dart';

import '../../constants/padding.dart';
import '../../constants/textsize.dart';
import 'TextView.dart';

class SectionTitleAndSeeAll extends StatelessWidget {
  const SectionTitleAndSeeAll({
    Key? key,
    required this.title,
    required this.onpress,
    required this.titlesize,
  }) : super(key: key);
  final String title;
  final double titlesize;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextView(
          text: title,
          size: titlesize,
          fontWeight: FontWeight.w700,
        ),
        InkWell(
          onTap: onpress,
          child: TextView(
            text: "See ALL",
            size: AppTexts.size12,
            fontWeight: FontWeight.w600,
            color: Colors.black26,
          ),
        )
      ],
    );
  }
}
