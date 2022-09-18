import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/models/homemodels/anytimesellermodel.dart';
import 'package:ecommerce_app/models/homemodels/trendingmodel.dart';
import 'package:ecommerce_app/models/live_tracking_model/carousel_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants/colors.dart';
import '../../../constants/height.dart';
import '../../../constants/icons.dart';
import '../../../constants/padding.dart';
import '../../../utils/size_config.dart';
import '../../widgets/TextView.dart';
import '../../widgets/carousel_card_widget.dart';
import '../../widgets/sectiontitleandseeall.dart';
import '../Home Page/components/anytimesellercard.dart';
import '../Home Page/components/trendingcard.dart';

class ProductTabPage extends StatefulWidget {
  ProductTabPage({Key? key}) : super(key: key);

  @override
  State<ProductTabPage> createState() => _ProductTabPageState();
}

class _ProductTabPageState extends State<ProductTabPage> {
  final controller = PageController(viewportFraction: 1, keepPage: true);

  final pages = List.generate(
    listCarousel.length,
    (index) => CarouselCard(
      image: listCarousel[index].image,
      title: listCarousel[index].title,
      price: listCarousel[index].price,
      titleColor: Colors.white,
      iscontainer: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(AppPaddings.padding15),
          child: SvgPicture.asset(AppIcons.drawer),
        ),
        title: TextView(
          text: "Products",
          color: AppColors.primarylightColor,
          fontWeight: FontWeight.w600,
          size: SizeConfig.textMultiplier * 1.9,
        ),
        actions: [
          Stack(children: [
            Padding(
              padding: EdgeInsets.only(
                  top: AppPaddings.padding15, right: AppPaddings.padding15),
              child: SvgPicture.asset(AppIcons.cart),
            ),
            Positioned(
              top: SizeConfig.heightMultiplier * 2,
              right: SizeConfig.widthMultiplier * 3.1,
              child: CircleAvatar(
                backgroundColor: AppColors.primarylightColor,
                radius: SizeConfig.widthMultiplier * 1.1,
              ),
            )
          ]),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppHeights.height10,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding19),
                child: SizedBox(
                  // height: 218,
                  height: SizeConfig.heightMultiplier * 27.1,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      PageView.builder(
                        physics: const BouncingScrollPhysics(),
                        padEnds: false,
                        controller: controller,
                        itemCount: pages.length,
                        itemBuilder: (BuildContext context, index) {
                          return pages[index];
                        },
                      ),
                      Positioned(
                        bottom: SizeConfig.heightMultiplier * 2.1,
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: pages.length,
                          effect: ExpandingDotsEffect(
                            activeDotColor: Colors.white,
                            dotHeight: SizeConfig.heightMultiplier * 0.4,
                            dotWidth: SizeConfig.widthMultiplier * 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppHeights.height35,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
                child: SectionTitleAndSeeAll(
                  title: "From Our Curated Shops",
                  titlesize: AppTexts.size20,
                  onpress: () {},
                ),
              ),
              SizedBox(
                height: AppHeights.height10,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
                child: TextView(
                  text: "Trending",
                  fontWeight: FontWeight.w700,
                  size: AppTexts.size16,
                ),
              ),
              SizedBox(
                height: AppHeights.height10,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 27,
                child: ListView.builder(
                  itemCount: hometrending_model.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: AppPaddings.padding24),
                      child: HomeTrendingCard(
                          image: hometrending_model[index].image,
                          title: hometrending_model[index].title,
                          location: hometrending_model[index].location,
                          reviews: hometrending_model[index].reviews,
                          rating: hometrending_model[index].rating,
                          favourite: hometrending_model[index].favourite),
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
                height: SizeConfig.heightMultiplier * 29,
                child: ListView.builder(
                  itemCount: hometrending_model.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: AppPaddings.padding24),
                      child: HomeTrendingCard(
                          image: hometrending_model[index].image,
                          title: hometrending_model[index].title,
                          location: hometrending_model[index].location,
                          reviews: hometrending_model[index].reviews,
                          rating: hometrending_model[index].rating,
                          favourite: hometrending_model[index].favourite),
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
                        itemCount: anytimeseller_model.length,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                EdgeInsets.only(left: AppPaddings.padding19),
                            child: AnyTimeSellerCard(
                              image: anytimeseller_model[index].image,
                              favourite: anytimeseller_model[index].favourite,
                              title: anytimeseller_model[index].title,
                              location: anytimeseller_model[index].location,
                              time: anytimeseller_model[index].time,
                              reviews: anytimeseller_model[index].reviews,
                              rating: anytimeseller_model[index].rating,
                              islocation: true,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AppHeights.height50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
