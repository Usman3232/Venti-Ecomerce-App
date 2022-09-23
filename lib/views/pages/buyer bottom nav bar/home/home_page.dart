import 'package:ecommerce_app/constants/colors.dart';

import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/images.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';

import 'package:ecommerce_app/models/live_tracking_model/carousel_model.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/circlecard.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/curatedshopcard.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/homecatogriescard.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/serviceprovidercard.dart';
import 'package:ecommerce_app/views/pages/livetracking/live_tracking_map.dart';
import 'package:ecommerce_app/views/pages/stores/stores.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/sectiontitleandseeall.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../models/homemodels/anytimesellermodel.dart';
import '../../../../models/homemodels/categoriesmodel.dart';
import '../../../../models/homemodels/circlemodel.dart';
import '../../../../models/homemodels/serviceprovidermodel.dart';
import '../../../../models/homemodels/curatedshopmodel.dart';
import '../../../widgets/carousel_card_widget.dart';
import 'components/anytimesellercard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 1, keepPage: true);

  final pages = List.generate(
    listCarousel.length,
    (index) => CarouselCard(
      image: listCarousel[index].image,
      title: listCarousel[index].title,
      price: listCarousel[index].price,
      titleColor: Colors.white,
      iscontainer: false,
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
          child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: SvgPicture.asset(AppIcons.drawer)),
        ),
        title: TextView(
          text: "VENTI",
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
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stories(),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.2,
                    ),
                    NewAdds(controller: controller, pages: pages),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 3.25,
                    ),
                    TextView(
                      text: "Live Tracking",
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w700,
                      size: AppTexts.size20,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(LiveTrackingMap());
                      },
                      child: Container(
                        height: SizeConfig.heightMultiplier * 20,
                        width: SizeConfig.widthMultiplier * 91,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            width: SizeConfig.widthMultiplier *
                                                6.4,
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
                                                height: SizeConfig
                                                        .heightMultiplier *
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
                                            Icons.location_on_outlined,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            width: SizeConfig.widthMultiplier *
                                                6.4,
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
                                                height: SizeConfig
                                                        .heightMultiplier *
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
                                height: SizeConfig.heightMultiplier * 9.1,
                                // width: SizeConfig.widthMultiplier * 7.73,
                                width: SizeConfig.widthMultiplier * 88,
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
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                    SectionTitleAndSeeAll(
                        title: "Categories",
                        onpress: () {
                          // Get.to(CuratedStore());
                        },
                        titlesize: AppTexts.size16),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 12,
                child: ListView.builder(
                  itemCount: homecategories_model.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.widthMultiplier * 6.8),
                      child: HomeCategoriesWidget(
                          image: homecategories_model[index].image,
                          title: homecategories_model[index].title,
                          items: homecategories_model[index].items),
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
                      height: SizeConfig.heightMultiplier * 9.35,
                      // width: SizeConfig.widthMultiplier * 85.5,
                      width: SizeConfig.widthMultiplier * 91,
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
                              height: SizeConfig.heightMultiplier * 6.3,
                              width: SizeConfig.widthMultiplier * 12.5,
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
                              width: SizeConfig.widthMultiplier * 24,
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
                    SizedBox(height: SizeConfig.heightMultiplier * 4.6),
                    TextView(
                      text: "Curated Stores",
                      fontWeight: FontWeight.w700,
                      size: AppTexts.size20,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 1,
                    ),
                    TextView(
                      text: "Trending",
                      fontWeight: FontWeight.w700,
                      size: AppTexts.size16,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 27,
                child: ListView.builder(
                  itemCount: curatedshop_model.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: AppPaddings.padding24),
                      child: CuratedShopCard(
                        image: curatedshop_model[index].image,
                        title: curatedshop_model[index].title,
                        location: curatedshop_model[index].location,
                        reviews: curatedshop_model[index].reviews,
                        rating: curatedshop_model[index].rating,
                        favourite: curatedshop_model[index].favourite,
                        onpressed: () {
                          Get.to(Stores(
                              title: "Curated Stores", isstore: "iscurated"));
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.65,
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
                height: SizeConfig.heightMultiplier * 2.2,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 29,
                child: ListView.builder(
                  itemCount: curatedshop_model.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: AppPaddings.padding24),
                      child: CuratedShopCard(
                          image: curatedshop_model[index].image,
                          title: curatedshop_model[index].title,
                          location: curatedshop_model[index].location,
                          reviews: curatedshop_model[index].reviews,
                          rating: curatedshop_model[index].rating,
                          favourite: curatedshop_model[index].favourite),
                    );
                  },
                ),
              ),
              Container(
                height: SizeConfig.heightMultiplier * 44.5,
                color: Color(0xffF8F8F8),
                child: Column(
                  children: [
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 3,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppPaddings.padding24),
                      child: SectionTitleAndSeeAll(
                          title: "AnyTime Sellers",
                          onpress: () {},
                          titlesize: AppTexts.size20),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 3.25,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 29.4,
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
                                rating: anytimeseller_model[index].rating),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3.1,
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
                  child: SectionTitleAndSeeAll(
                      title: "Service Providers",
                      onpress: () {},
                      titlesize: AppTexts.size20)),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.65,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 27.9,
                child: ListView.builder(
                  itemCount: homeserviceprovider_model.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: AppPaddings.padding18),
                      child: ServiceProviderCard(
                          image: homeserviceprovider_model[index].image,
                          title: homeserviceprovider_model[index].title,
                          reviews: homeserviceprovider_model[index].reviews,
                          rating: homeserviceprovider_model[index].rating,
                          favourite:
                              homeserviceprovider_model[index].favourite),
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

class NewAdds extends StatelessWidget {
  const NewAdds({
    Key? key,
    required this.controller,
    required this.pages,
  }) : super(key: key);

  final PageController controller;
  final List<CarouselCard> pages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 27.1,
      child: Stack(
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
            left: SizeConfig.widthMultiplier * 4,
            child: SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.black,
                dotHeight: SizeConfig.heightMultiplier * 0.4,
                dotWidth: SizeConfig.widthMultiplier * 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Stories extends StatelessWidget {
  const Stories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 9,
      child: ListView.builder(
        itemCount: homecircle_model.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 3.5),
            child: HomeCircleWidget(image: homecircle_model[index].image),
          );
        },
      ),
    );
  }
}
