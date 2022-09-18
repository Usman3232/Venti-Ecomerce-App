import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CuratedSearch extends StatelessWidget {
  const CuratedSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: AppHeights.height62,
          ),
          Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding15),
                child: InkWell(
                    onTap: () {}, child: SvgPicture.asset(AppIcons.back)),
              ),
              Flexible(
                  child:
                      AuthTextInputField(hintText: "Search a curated store")),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding15),
                child: SvgPicture.asset(AppIcons.filter),
              )
            ],
          ),
        ],
      ),
    );
  }
}
