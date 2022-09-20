import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/models/curated_store_models/categoriesmodel.dart';
import 'package:ecommerce_app/models/homemodels/curatedshopmodel.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/CURATED%20STORES/curated%20search%20page/curatedsearchpage.dart';
import 'package:ecommerce_app/views/pages/Home%20Page/components/curatedshopcard.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'components/curatedcomponentscard.dart';

class CuratedStore extends StatelessWidget {
  const CuratedStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(SizeConfig.widthMultiplier * 4.8),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset(
              AppIcons.back,
              color: Color(0xff141325),
            ),
          ),
        ),
        title: TextView(
          text: "Curated Stores",
          size: AppTexts.size15,
          fontWeight: FontWeight.w600,
          color: AppColors.primarydarkColor,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 4),
            child: GestureDetector(
                onTap: () {
                  Get.to(CuratedSearch());
                },
                child: SvgPicture.asset(AppIcons.search)),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
              child: Row(
                children: [
                  TextView(
                    text: "Categories",
                    fontWeight: FontWeight.w600,
                    size: AppTexts.size13,
                    color: AppColors.textColor,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: const Color(0xff141325),
                    size: SizeConfig.imageSizeMultiplier * 5,
                  )
                ],
              ),
            ),
            SizedBox(
              height: AppHeights.height14,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 10,
              child: ListView.builder(
                itemCount: curatedcategories_model.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: AppPaddings.padding25),
                    child: CuratedCategoriesCard(
                        image: curatedcategories_model[index].image,
                        title: curatedcategories_model[index].title),
                  );
                },
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Expanded(
                child: GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: curatedshop_model.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: SizeConfig.heightMultiplier * .11,
                  mainAxisSpacing: SizeConfig.heightMultiplier * 2,
                  // crossAxisSpacing: SizeConfig.widthMultiplier * 1,
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: AppPaddings.padding25),
                  child: CuratedShopCard(
                      image: curatedshop_model[index].image,
                      title: curatedshop_model[index].title,
                      location: curatedshop_model[index].location,
                      reviews: curatedshop_model[index].reviews,
                      rating: curatedshop_model[index].rating,
                      favourite: curatedshop_model[index].favourite),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
