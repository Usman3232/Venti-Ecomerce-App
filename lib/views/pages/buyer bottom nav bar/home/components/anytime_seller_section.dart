import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/models/homemodels/anytimesellermodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/anytimesellercard.dart';
import 'package:ecommerce_app/views/pages/stores/stores.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnyTimeSellerSection extends StatelessWidget {
  const AnyTimeSellerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 44.5,
          color: Color(0xffF8F8F8),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 3,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView(
                      text: "AnyTime Sellers",
                      size: AppTexts.size20,
                      fontWeight: FontWeight.w700,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(Stores(
                            title: "Anytime Sellers", isstore: "isanytime"));
                      },
                      child: TextView(
                        text: "See ALL",
                        size: AppTexts.size12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black26,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AppHeights.height26,
              ),
              SizedBox(
                height: AppHeights.height236,
                child: ListView.builder(
                  itemCount: anytimeseller_model.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: AppPaddings.padding19),
                      child: AnyTimeSellerCard(
                        image: anytimeseller_model[index].image,
                        favourite: anytimeseller_model[index].favourite,
                        title: anytimeseller_model[index].title,
                        location: anytimeseller_model[index].location,
                        time: anytimeseller_model[index].time,
                        reviews: anytimeseller_model[index].reviews,
                        rating: anytimeseller_model[index].rating,
                        onpressed: () {
                          Get.to(Stores(
                            title: "AnyTime Seller",
                            isstore: "isanytime",
                          ));
                        },
                        islocation: true,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}