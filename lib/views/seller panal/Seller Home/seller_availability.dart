import 'package:ecommerce_app/constants/colors.dart';

import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../constants/textsize.dart';
import '../../widgets/TextView.dart';


class SellerAvailability extends StatefulWidget {
  const SellerAvailability({Key? key}) : super(key: key);

  @override
  State<SellerAvailability> createState() => _SellerAvailabilityState();
}

class _SellerAvailabilityState extends State<SellerAvailability> {
  bool value=false;
  bool isStatus=false;
  bool isStatus1=false;
  int val=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.black,size: SizeConfig.imageSizeMultiplier*5,),
        title:  Text("VENTI - Seller AVAILABILITY",
          style: TextStyle(
            color: AppColors.primarydarkColor,
            fontSize: AppTexts.size14,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
        ),
        actions: [
          SvgPicture.asset(AppIcons.message),
          SizedBox(
            width: AppWidths.width15,
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppPaddings.padding15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.2,
            ),
            Row(
              children: [
                SizedBox(
                  width: SizeConfig.widthMultiplier*68,
                  child: Text("Turn Your Shop On and Make Your Sales ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: AppTexts.size16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const Spacer(),
                FlutterSwitch(
                  switchBorder: Border.all(color:AppColors.primarydarkColor),
                  activeColor: Colors.white,
                  inactiveColor: Colors.white,
                  activeToggleColor: AppColors.primarylightColor,
                  inactiveToggleColor: AppColors.primarylightColor,
                  width: AppWidths.width30,
                  height: SizeConfig.heightMultiplier * 2.2,
                  toggleSize:12,
                  padding: 2,
                  value: isStatus1,
                  borderRadius: 30.0,
                  onToggle: (value) {
                    setState(() {
                      isStatus1 = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 5,
            ),
            Text("Set your availabilty schedule",
              style: TextStyle(
                color: Colors.black,
                fontSize: AppTexts.size16,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2.2,
            ),
            Container(
              height: SizeConfig.heightMultiplier * 2.855,
              color: Colors.blueGrey,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 5.65,
            ),
            Row(
              children: [
                Checkbox(value: value,
                    activeColor: AppColors.primarylightColor,
                    onChanged:( val) {
                      setState(() {
                        value = val!;
                      });
                    }),
                Text("Set this store timing availabilty for everyday",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppTexts.size11,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 8.2,
            ),
            Row(
              children: [
                Text("Turn Your Distance Settings",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppTexts.size15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
               const Spacer(),
                FlutterSwitch(
                  switchBorder: Border.all(color:AppColors.primarydarkColor),
                  activeColor: Colors.white,
                  inactiveColor: Colors.white,
                  activeToggleColor: AppColors.primarylightColor,
                  inactiveToggleColor:AppColors.primarylightColor,
                  width: AppWidths.width30,
                  height: SizeConfig.heightMultiplier * 2.2,
                  toggleSize:12,
                  padding: 2,
                  value: isStatus,
                  borderRadius: 30.0,
                  onToggle: (value) {
                    setState(() {
                      isStatus = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3.8,
            ),
            Row(
              children: [
                Text("Distance (Radius)",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppTexts.size16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 1.75,
                  width: AppWidths.width15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xff607FA9).withOpacity(0.5),
                  ),
                  child: const Center(child: Text("i")),
                ),
                const Spacer(),
                InkWell(
                    onTap: () {
                      setState(() {
                        if (val == 0) {
                          val = val;
                        } else {
                          val = val - 1;
                        }
                      });
                    },
                    child: SvgPicture.asset(
                        AppIcons.minuscircle)),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.padding8),
                  child: TextView(
                    text:val
                        .toString(),
                    size: AppTexts.size14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        val = val + 1;
                      });
                    },
                    child: SvgPicture.asset(
                        AppIcons.addcircle))
              ],
            )
          ],
        ),
      ),
    );
  }
}