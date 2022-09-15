import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/modals/homemodals/anytimesellermodal.dart';
import 'package:ecommerce_app/modals/homemodals/categoriesmodal.dart';
import 'package:ecommerce_app/modals/homemodals/circlemodal.dart';
import 'package:ecommerce_app/modals/homemodals/serviceprovidermodal.dart';
import 'package:ecommerce_app/modals/homemodals/specialforyoumodal.dart';
import 'package:ecommerce_app/modals/homemodals/trendingmodal.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/anytimesellercard.dart';
import 'components/catogriescard.dart';
import 'components/circlecard.dart';
import 'components/serviceprovidercard.dart';
import 'components/trendingcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppHeights.height62,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(AppIcons.drawer),
                    TextView(
                      text: "VENTI",
                      color: AppColors.primarylightColor,
                      fontWeight: FontWeight.w600,
                      size: SizeConfig.textMultiplier * 1.9,
                    ),
                    Stack(children: [
                      SvgPicture.asset(AppIcons.cart),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: AppColors.primarylightColor,
                          radius: SizeConfig.widthMultiplier * 1,
                        ),
                      )
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3.4,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 9,
                child: ListView.builder(
                  itemCount: homecircle_modal.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.widthMultiplier * 3.5),
                      child: HomeCircleWidget(
                          image: homecircle_modal[index].image),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppHeights.height18,
                    ),
                    TextView(
                      text: "Live Tracking",
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w700,
                      size: AppTexts.size20,
                    ),
                    SizedBox(
                      height: AppHeights.height8,
                    ),
                    Container(
                      height: AppHeights.height160,
                      width: AppWidths.width336,
                      decoration: BoxDecoration(
                          color: const Color(0xffE5EDF4),
                          borderRadius: BorderRadius.circular(
                              SizeConfig.widthMultiplier * 2.7)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.timer_outlined,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width:
                                              SizeConfig.widthMultiplier * 6.4,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextView(
                                              text: "8:50 PM",
                                              size: AppTexts.size12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            SizedBox(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      .5,
                                            ),
                                            TextView(
                                              text: "Delivery Time",
                                              size: AppTexts.size12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.timer_outlined,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width:
                                              SizeConfig.widthMultiplier * 6.4,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextView(
                                              text: "Gaur City",
                                              size: AppTexts.size12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            SizedBox(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      .5,
                                            ),
                                            TextView(
                                              text: "Delivery Place",
                                              size: AppTexts.size12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: AppHeights.height73,
                              width: AppWidths.width303,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(AppRadius.radius8),
                                image: DecorationImage(
                                    image: AssetImage(AppImages.googlemap),
                                    fit: BoxFit.cover),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppHeights.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView(
                          text: "Categories",
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w700,
                          size: AppTexts.size16,
                        ),
                        InkWell(
                          onTap: () {},
                          child: TextView(
                            text: "See ALL",
                            color: Colors.black38,
                            fontWeight: FontWeight.w600,
                            size: AppTexts.size12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppHeights.height20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 11.8,
                child: ListView.builder(
                  itemCount: homecategories_modal.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.widthMultiplier * 6.8),
                      child: HomeCategoriesWidget(
                          image: homecategories_modal[index].image,
                          title: homecategories_modal[index].title,
                          items: homecategories_modal[index].items),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 5.1,
                    ),
                    Container(
                      height: AppHeights.height75,
                      width: AppWidths.width336,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(AppRadius.radius10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppPaddings.padding15,
                                vertical: AppPaddings.padding13),
                            child: Container(
                              height: AppHeights.height50,
                              width: AppWidths.width50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffFFF7CC),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(
                                    SizeConfig.widthMultiplier * 3),
                                child: SvgPicture.asset(AppIcons.coin),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextView(
                                text: "My Points",
                                fontWeight: FontWeight.w600,
                                size: AppTexts.size17,
                              ),
                              TextView(
                                text: "7800",
                                fontWeight: FontWeight.w800,
                                color: Colors.black12,
                                size: AppTexts.size15,
                              )
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.all(AppPaddings.padding24),
                            child: Container(
                              height: SizeConfig.heightMultiplier * 3.4,
                              width: AppWidths.width93,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFF7CC),
                                  borderRadius: BorderRadius.circular(
                                      AppRadius.radius30)),
                              child: Center(
                                child: TextView(
                                  text: "ReDEEM",
                                  color: Color(0xffF2CF06),
                                  fontWeight: FontWeight.w600,
                                  size: AppTexts.size12,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: AppHeights.height35),
                    TextView(
                      text: "Curated Stores",
                      fontWeight: FontWeight.w700,
                      size: AppTexts.size20,
                    ),
                    SizedBox(
                      height: AppHeights.height8,
                    ),
                    TextView(
                      text: "Trending",
                      fontWeight: FontWeight.w700,
                      size: AppTexts.size16,
                    ),
                    SizedBox(
                      height: AppHeights.height18,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 27,
                child: ListView.builder(
                  itemCount: hometrending_modal.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: AppPaddings.padding24),
                      child: HomeTrendingCard(
                          image: hometrending_modal[index].image,
                          title: hometrending_modal[index].title,
                          location: hometrending_modal[index].location,
                          reviews: hometrending_modal[index].reviews,
                          rating: hometrending_modal[index].rating,
                          favourite: hometrending_modal[index].favourite),
                    );
                  },
                ),
              ),
              SizedBox(
                height: AppHeights.height21,
              ),
              Padding(
                padding: EdgeInsets.only(left: AppPaddings.padding24),
                child: TextView(
                  text: "Special For You",
                  fontWeight: FontWeight.w700,
                  size: AppTexts.size16,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(
                height: AppHeights.height18,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 30,
                child: ListView.builder(
                  itemCount: homespecialforyou_modal.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: AppPaddings.padding24),
                      child: HomeTrendingCard(
                          image: homespecialforyou_modal[index].image,
                          title: homespecialforyou_modal[index].title,
                          location: homespecialforyou_modal[index].location,
                          reviews: homespecialforyou_modal[index].reviews,
                          rating: homespecialforyou_modal[index].rating,
                          favourite: homespecialforyou_modal[index].favourite),
                    );
                  },
                ),
              ),
              Container(
                height: AppHeights.height358,
                color: Color(0xffF8F8F8),
                child: Column(
                  children: [
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 3,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppPaddings.padding24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextView(
                            text: "AnyTime Sellers",
                            size: AppTexts.size20,
                            fontWeight: FontWeight.w700,
                          ),
                          InkWell(
                            onTap: () {},
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
                        itemCount: anytimeseller_modal.length,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                EdgeInsets.only(left: AppPaddings.padding19),
                            child: AnyTimeSellerCard(
                                image: anytimeseller_modal[index].image,
                                favourite: anytimeseller_modal[index].favourite,
                                title: anytimeseller_modal[index].title,
                                location: anytimeseller_modal[index].location,
                                time: anytimeseller_modal[index].time,
                                reviews: anytimeseller_modal[index].reviews,
                                rating: anytimeseller_modal[index].rating),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AppHeights.height25,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView(
                      text: "Service Providers",
                      size: AppTexts.size20,
                      fontWeight: FontWeight.w700,
                    ),
                    InkWell(
                      onTap: () {},
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
                height: AppHeights.height21,
              ),
              SizedBox(
                height: AppHeights.height224,
                child: ListView.builder(
                  itemCount: homeserviceprovider_modal.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: AppPaddings.padding18),
                      child: ServiceProviderCard(
                          image: homeserviceprovider_modal[index].image,
                          title: homeserviceprovider_modal[index].title,
                          reviews: homeserviceprovider_modal[index].reviews,
                          rating: homeserviceprovider_modal[index].rating,
                          favourite:
                              homeserviceprovider_modal[index].favourite),
                    );
                  },
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
