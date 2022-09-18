import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentIconsWidget extends StatelessWidget {
  final String image;
  const PaymentIconsWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppHeights.height62,
      width: AppWidths.width64,
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppRadius.radius20),
      ),
      child: Center(
        child: SvgPicture.asset(image),
      ),
    );
  }
}
