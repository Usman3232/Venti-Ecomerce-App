import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/models/curated_store_models/productmodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/CART%20&%20CHECKOUT/all_carts.dart';
import 'package:ecommerce_app/views/pages/curated%20product%20detail/curated_product_detail.dart';
import 'package:ecommerce_app/views/pages/chat/chat.dart';
import 'package:ecommerce_app/views/pages/curated_store_detail/components/product_card.dart';
import 'package:ecommerce_app/views/pages/customize%20gift%20hamper/customize_gift_hamper.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AnytimeSellerStoreDetail extends StatefulWidget {
  const AnytimeSellerStoreDetail({Key? key}) : super(key: key);

  @override
  State<AnytimeSellerStoreDetail> createState() =>
      _AnytimeSellerStoreDetailState();
}

class _AnytimeSellerStoreDetailState extends State<AnytimeSellerStoreDetail> {
  List<String> tags = ["ORGANIC", "AT HOME"];
  List<String> tabs = ["Gallery", "Services", "Products"];
  int selectedTab = 0;
  List<Widget> tabWidgets = [GalleryTab(), ServicesTab(), ProductsTab()];
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
                        height: AppHeights.height66,
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
                            onTap: () {},
                            child: Container(
                              height: SizeConfig.heightMultiplier * 3.8,
                              width: SizeConfig.widthMultiplier * 7.7,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Icon(
                                Icons.favorite_rounded,
                                color: AppColors.primarylightColor,
                                size: SizeConfig.imageSizeMultiplier * 5.5,
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
              top: AppHeights.height110,
              child: Image.asset("assets/images/RalphLauren.png"),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: AppHeights.height525,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextView(
                                  text: "Organic Products by Eren",
                                  fontWeight: FontWeight.w600,
                                  size: AppTexts.size20,
                                ),
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.primarylightColor
                                          .withOpacity(.3)),
                                  child: Icon(
                                    Icons.location_on,
                                    color: AppColors.primarylightColor,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: AppHeights.height10,
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
                              height: AppHeights.height8,
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

class GalleryTab extends StatelessWidget {
  const GalleryTab({Key? key}) : super(key: key);

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
                Get.to(CustomizeGiftHamper());
              },
              favourite: product_model[index].favourite),
        );
      },
    );
  }
}

class ServicesTab extends StatelessWidget {
  const ServicesTab({Key? key}) : super(key: key);

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
                Get.to(CustomizeGiftHamper());
              },
              favourite: product_model[index].favourite),
        );
      },
    );
  }
}

class ProductsTab extends StatefulWidget {
  const ProductsTab({Key? key}) : super(key: key);

  @override
  State<ProductsTab> createState() => _ProductsTabState();
}

class _ProductsTabState extends State<ProductsTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                        Get.to(CustomizeGiftHamper());
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
