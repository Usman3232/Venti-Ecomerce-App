import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/images.dart';



import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/curated%20product%20detail/curated_product_fullimage.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key, required this.product}) : super(key: key);
  final product;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool iscustomization = true;
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
              child: InkWell(
                onTap: () {
                  Get.to(FullImage(image: widget.product.image));
                },
                child: Container(
                  height: SizeConfig.heightMultiplier * 55,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.product.image),
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
                                    shape: BoxShape.circle,
                                    color: Colors.white),
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
                            Container(
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
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 1.7,
                            ),
                            Container(
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
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  height: SizeConfig.heightMultiplier * 57.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: iscustomization
                      ? ProductCustomization(
                          price: widget.product.price,
                          rating: widget.product.rating,
                          reviews: widget.product.reviews,
                          onpressed: () {
                            setState(() {
                              iscustomization = false;
                            });
                          },
                        )
                      : ProductReviews(
                          onpressed: () {
                            setState(() {
                              iscustomization = true;
                            });
                          },
                        )),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductReviews extends StatelessWidget {
  const ProductReviews({
    Key? key,
    required this.onpressed,
  }) : super(key: key);
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.heightMultiplier * 4,
          left: SizeConfig.widthMultiplier * 4.25,
          right: SizeConfig.widthMultiplier * 4.25),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: onpressed,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 28,
              ),
              TextView(
                text: "Reviews (1045)",
                size: SizeConfig.textMultiplier * 2.04,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  minVerticalPadding: 15,
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(AppImages.loginImg),
                            fit: BoxFit.cover)),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextView(
                        text: "Nolan Carder",
                        size: SizeConfig.textMultiplier * 1.65,
                        fontWeight: FontWeight.w600,
                      ),
                      TextView(
                        text: "Today",
                        size: SizeConfig.textMultiplier * 1.53,
                        color: Color(0xffB7B7B7),
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  subtitle: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Row(
                        children: [
                          ...List.generate(
                              5, (index) => SvgPicture.asset(AppIcons.star))
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      TextView(
                        text:
                            "Perfect for keeping your feet dry and warm in damp conditions.",
                        size: SizeConfig.textMultiplier * 1.53,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class ProductCustomization extends StatefulWidget {
  const ProductCustomization(
      {Key? key,
      required this.reviews,
      required this.rating,
      required this.price,
      required this.onpressed})
      : super(key: key);
  final int reviews;
  final double rating;
  final String price;
  final VoidCallback onpressed;

  @override
  State<ProductCustomization> createState() => _ProductCustomizationState();
}

class _ProductCustomizationState extends State<ProductCustomization> {
  List<Color> color = [
    Color(0xff4D4A4A),
    Color(0xffFFECC2),
    Color(0xffFDF8EC),
    Color(0xffE9F2FF)
  ];
  List<String> size = ["S", "M", "L", "XL", "XXL"];
  int selectedcolor = 0;
  int selectedsize = 0;
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.heightMultiplier * 4,
          left: SizeConfig.widthMultiplier * 4.25,
          right: SizeConfig.widthMultiplier * 4.25),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextView(
                  text: 'Piqué Polo Shirt',
                  fontWeight: FontWeight.w600,
                  size: SizeConfig.textMultiplier * 2.29,
                ),
                Spacer(),
                TextView(
                  text: "₹" + widget.price,
                  size: SizeConfig.textMultiplier * 2.8,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Row(
              children: [
                TextView(
                  text: 'Ralph Lauren',
                  fontWeight: FontWeight.w600,
                  size: SizeConfig.textMultiplier * 1.65,
                  color: Color(0xff2B0806),
                ),
                Spacer(),
                TextView(
                  text: "₹3,896",
                  size: SizeConfig.textMultiplier * 1.65,
                  fontWeight: FontWeight.w600,
                  line: TextDecoration.lineThrough,
                  color: Color(0xffFF4D46),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Row(
              children: [
                SvgPicture.asset(AppIcons.star),
                SizedBox(
                  width: SizeConfig.widthMultiplier * .5,
                ),
                TextView(
                  text: widget.rating.toString(),
                  size: SizeConfig.textMultiplier * 1.4,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * .5,
                ),
                InkWell(
                  onTap: widget.onpressed,
                  child: TextView(
                    text: "(" + widget.reviews.toString() + " reviews)",
                    size: SizeConfig.textMultiplier * 1.4,
                    fontWeight: FontWeight.w700,
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            TextView(
              text: "Description",
              size: SizeConfig.textMultiplier * 1.8,
              fontWeight: FontWeight.w600,
              color: Color(0xff2B0806),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            ReadMoreText(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacus. Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacusTristique amet, maecenas sed vitae pretium. Tristique amet, maecenas.Tristique amet, maecenas sed vitae pretium. Nulla mattis et tortor, viverra mauris lacus.',
              trimLines: 3,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              colorClickableText: AppColors.primarydarkColor,
              trimExpandedText: 'Read less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: AppHeights.height10,
            ),
            TextView(
              text: "Color",
              size: SizeConfig.textMultiplier * 1.8,
              fontWeight: FontWeight.w600,
              color: Color(0xff2B0806),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Row(
              children: [
                ...List.generate(
                    color.length,
                    (index) => InkWell(
                          onTap: () {
                            selectedcolor = index;
                            setState(() {});
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              padding: EdgeInsets.all(
                                  selectedcolor == index ? 3 : 0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: selectedcolor == index
                                          ? AppColors.primarylightColor
                                          : Colors.transparent)),
                              child: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: color[index]),
                              ),
                            ),
                          ),
                        ))
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextView(
                text: "Avaliable Size",
                size: SizeConfig.textMultiplier * 1.8,
                fontWeight: FontWeight.w600,
                color: Color(0xff2B0806)),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Row(
              children: [
                ...List.generate(
                    size.length,
                    (index) => InkWell(
                          onTap: () {
                            setState(() {
                              selectedsize = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: selectedsize == index
                                            ? AppColors.primarylightColor
                                            : Colors.transparent)),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      selectedsize == index ? 8 : 0),
                                  child: TextView(
                                    text: size[index],
                                    size: SizeConfig.textMultiplier * 1.53,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                        ))
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 5,
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        if (num == 0) {
                          num = num;
                        } else {
                          num = num - 1;
                        }
                      });
                    },
                    child: SvgPicture.asset(AppIcons.minusbluecircle)),
                SizedBox(width: SizeConfig.widthMultiplier * 3),
                TextView(
                  text: num.toString(),
                  size: SizeConfig.textMultiplier * 1.53,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(width: SizeConfig.widthMultiplier * 3),
                InkWell(
                    onTap: () {
                      setState(() {
                        num = num + 1;
                      });
                    },
                    child: SvgPicture.asset(AppIcons.addbluecircle)),
                Spacer(),
                CustomTextButton(
                  callback: () {},
                  colour: AppColors.primarylightColor,
                  title: "Add to Cart",
                  textcolour: Colors.white,
                  height: 52,
                  width: 218,
                  radius: 42,
                  fontSize: SizeConfig.textMultiplier * 2.04,
                  fontWeight: FontWeight.w500,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
