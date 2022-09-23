
import 'package:ecommerce_app/constants/textsize.dart';

import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodCard extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final int num;
  const PaymentMethodCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      required this.num})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 3.8),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(SizeConfig.widthMultiplier * 2),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 6.5, vertical: SizeConfig.heightMultiplier * 3.4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.sourceSansPro(
                    color: Colors.white,
                    fontSize: AppTexts.size16,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3.4,
              ),
              Row(
                children: [
                  Text(
                    '••••',
                    style: TextStyle(
                        color: Colors.white, fontSize: AppTexts.size30),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 5.1,
                  ),
                  Text(
                    '••••',
                    style: TextStyle(
                        color: Colors.white, fontSize: AppTexts.size30),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 5.1,
                  ),
                  Text(
                    '••••',
                    style: TextStyle(
                        color: Colors.white, fontSize: AppTexts.size30),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 5.1,
                  ),
                  Text(
                    num.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: AppTexts.size16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                'Balance',
                style: GoogleFonts.sourceSansPro(
                    color: Colors.white,
                    fontSize: AppTexts.size12,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 0.5,
              ),
              Text(
                '₹ $price',
                style: GoogleFonts.sourceSansPro(
                    color: Colors.white,
                    fontSize: AppTexts.size20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
