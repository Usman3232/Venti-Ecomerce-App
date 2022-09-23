import 'package:ecommerce_app/constants/colors.dart';

import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/models/curated_store_models/productmodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/all_carts.dart';
import 'package:ecommerce_app/views/pages/curated%20product%20detail/curated_product_detail.dart';
import 'package:ecommerce_app/views/pages/chat/chat.dart';
import 'package:ecommerce_app/views/pages/curated_store_detail/components/product_card.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CuratedStoreDetail extends StatefulWidget {
  const CuratedStoreDetail({Key? key}) : super(key: key);

  @override
  State<CuratedStoreDetail> createState() => _CuratedStoreDetailState();
}

class _CuratedStoreDetailState extends State<CuratedStoreDetail> {
  List<String> tags = ["4.7 km", "Clothes", "Deliverable"];
  List<String> tabs = ["Popular", "New", "By Categories"];
  int selectedTab = 0;
  List<Widget> tabWidgets = [PopularTab(), NewTab(), ByCategoriesTab()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: SizeConfig.heightMultiplier * 40.9,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/curatedpopular.png'),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 8.2,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              height: SizeConfig.heightMultiplier * 3.8,
                              width: SizeConfig.widthMultiplier * 7.7,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Padding(
                                padding: EdgeInsets.all(
                                    SizeConfig.widthMultiplier * 1.8),
                                child: SvgPicture.asset(
                                  AppIcons.back,
                                  color: AppColors.primarylightColor,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.to(Chat());
                            },
                            child: Container(
                              height: SizeConfig.heightMultiplier * 3.8,
                              width: SizeConfig.widthMultiplier * 7.7,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Padding(
                                padding: EdgeInsets.all(
                                    SizeConfig.widthMultiplier * 1.8),
                                child: SvgPicture.asset(
                                  AppIcons.message,
                                  color: AppColors.primarylightColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 1.7,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(AllCartsCheckOut());
                            },
                            child: Container(
                              height: SizeConfig.heightMultiplier * 3.8,
                              width: SizeConfig.widthMultiplier * 7.7,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Padding(
                                padding: EdgeInsets.all(
                                    SizeConfig.widthMultiplier * 1.6),
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      AppIcons.cart,
                                      color: AppColors.primarylightColor,
                                    ),
                                    Positioned(
                                      right: 0,
                                      top: 0,
                                      child: CircleAvatar(
                                        backgroundColor:
                                            AppColors.primarylightColor,
                                        radius: SizeConfig.widthMultiplier * 1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.heightMultiplier * 13.7,
              child: Image.asset("assets/images/RalphLauren.png"),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: SizeConfig.heightMultiplier * 6.545,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppRadius.radius30),
                      topLeft: Radius.circular(AppRadius.radius30)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppPaddings.padding22,
                            vertical: AppPaddings.padding25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                              text: "Ralph Lauren",
                              fontWeight: FontWeight.w600,
                              size: AppTexts.size20,
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1.2,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(AppIcons.star),
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 1.6,
                                    ),
                                    TextView(
                                      text: "4.5",
                                      fontWeight: FontWeight.w700,
                                      size: AppTexts.size11,
                                    ),
                                    SizedBox(
                                      width: SizeConfig.widthMultiplier * 1.6,
                                    ),
                                    TextView(
                                      text: "(1045 Reviews)",
                                      fontWeight: FontWeight.w400,
                                      size: AppTexts.size11,
                                      color: Color(0xff7E7C7C),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: SizeConfig.widthMultiplier * 3,
                                ),
                                Row(
                                  children: [
                                    ...List.generate(
                                        tags.length,
                                        (index) => Container(
                                              decoration: BoxDecoration(
                                                  color: AppColors
                                                      .primarylightColor
                                                      .withOpacity(.3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: SizeConfig
                                                          .widthMultiplier *
                                                      3,
                                                  vertical: SizeConfig
                                                          .heightMultiplier *
                                                      .6),
                                              margin: EdgeInsets.only(
                                                  right: SizeConfig
                                                          .widthMultiplier *
                                                      2),
                                              child: TextView(
                                                text: tags[index],
                                                fontWeight: FontWeight.w500,
                                                size:
                                                    SizeConfig.textMultiplier *
                                                        1.2,
                                                color:
                                                    AppColors.primarydarkColor,
                                              ),
                                            ))
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2,
                            ),
                            TextView(
                              text:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui tristique fames dui integer euismod nec gravida mollis consequat.",
                              fontWeight: FontWeight.w400,
                              size: AppTexts.size13,
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2,
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          ...List.generate(
                              tabs.length,
                              (index) => InkWell(
                                    onTap: () {
                                      selectedTab = index;
                                      setState(() {});
                                    },
                                    child: SizedBox(
                                      height: SizeConfig.heightMultiplier * 3,
                                      width: SizeConfig.widthMultiplier * 25,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            tabs[index],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: selectedTab == index
                                                    ? AppColors.primarydarkColor
                                                    : Colors.black,
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        1.6),
                                          ),
                                          AnimatedContainer(
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.bounceInOut,
                                            height:
                                                SizeConfig.heightMultiplier *
                                                    0.5,
                                            width: selectedTab == index
                                                ? SizeConfig.widthMultiplier *
                                                    23
                                                : 0,
                                            color: AppColors.primarydarkColor,
                                          )
                                        ],
                                      ),
                                    ),
                                  ))
                        ],
                      ),
                      Divider(
                        height: 0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      SizedBox(
                          height: SizeConfig.heightMultiplier * 150,
                          width: SizeConfig.widthMultiplier * 100,
                          child: tabWidgets[selectedTab])
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularTab extends StatelessWidget {
  const PopularTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: product_model.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: SizeConfig.heightMultiplier * .11,
          mainAxisSpacing: SizeConfig.heightMultiplier * 2,
          // crossAxisSpacing: SizeConfig.widthMultiplier * 1,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: AppPaddings.padding25),
          child: ProductCard(
              image: product_model[index].image,
              title: product_model[index].title,
              location: product_model[index].location,
              reviews: product_model[index].reviews,
              rating: product_model[index].rating,
              price: product_model[index].price,
              onTap: () {
                Get.to(ProductDetail(
                  product: product_model[index],
                ));
              },
              favourite: product_model[index].favourite),
        );
      },
    );
  }
}

class NewTab extends StatelessWidget {
  const NewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: product_model.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: SizeConfig.heightMultiplier * .11,
          mainAxisSpacing: SizeConfig.heightMultiplier * 2,
          // crossAxisSpacing: SizeConfig.widthMultiplier * 1,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: AppPaddings.padding25),
          child: ProductCard(
              image: product_model[index].image,
              title: product_model[index].title,
              location: product_model[index].location,
              reviews: product_model[index].reviews,
              rating: product_model[index].rating,
              price: product_model[index].price,
              onTap: () {
                Get.to(ProductDetail(
                  product: product_model[index],
                ));
              },
              favourite: product_model[index].favourite),
        );
      },
    );
  }
}

class ByCategoriesTab extends StatefulWidget {
  const ByCategoriesTab({Key? key}) : super(key: key);

  @override
  State<ByCategoriesTab> createState() => _ByCategoriesTabState();
}

class _ByCategoriesTabState extends State<ByCategoriesTab> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "All Products",
      "Glasses",
      "Shirts",
      "Pents",
    ];
    return Column(
      children: [
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  categories.length,
                  (index) => GestureDetector(
                        onTap: () {
                          selectedCategory = index;
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          decoration: BoxDecoration(
                              border: selectedCategory == index
                                  ? Border.all(
                                      color: AppColors.primarydarkColor)
                                  : null,
                              color: selectedCategory == index
                                  ? AppColors.primarylightColor.withOpacity(.3)
                                  : Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(100)),
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.widthMultiplier * 5,
                              vertical: SizeConfig.heightMultiplier * 0.8),
                          margin: EdgeInsets.only(
                              left: index == 0
                                  ? SizeConfig.widthMultiplier * 6
                                  : 0,
                              right: SizeConfig.widthMultiplier * 4),
                          child: TextView(
                            text: categories[index],
                            fontWeight: FontWeight.w500,
                            size: SizeConfig.textMultiplier * 1.6,
                            color: selectedCategory == index
                                ? AppColors.primarydarkColor
                                : Colors.grey,
                          ),
                        ),
                      ))
            ],
          ),
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 2),
          itemCount: product_model.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: SizeConfig.heightMultiplier * .11,
              mainAxisSpacing: SizeConfig.heightMultiplier * 2,
              // crossAxisSpacing: SizeConfig.widthMultiplier * 1,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: AppPaddings.padding25),
              child: Column(
                children: [
                  ProductCard(
                      image: product_model[index].image,
                      title: product_model[index].title,
                      location: product_model[index].location,
                      reviews: product_model[index].reviews,
                      rating: product_model[index].rating,
                      price: product_model[index].price,
                      onTap: () {
                        Get.to(ProductDetail(
                          product: product_model[index],
                        ));
                      },
                      favourite: product_model[index].favourite),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
