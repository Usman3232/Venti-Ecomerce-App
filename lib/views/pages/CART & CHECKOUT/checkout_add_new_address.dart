
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/models/checkout_model/add_new_cards.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/colors.dart';
import '../../../constants/padding.dart';
import '../../../constants/textsize.dart';
import '../../../constants/width.dart';
import '../../../utils/size_config.dart';
import '../../widgets/auth_input_text_field.dart';

class AddNewAddressCheckOut extends StatefulWidget {
  const AddNewAddressCheckOut({Key? key}) : super(key: key);

  @override
  State<AddNewAddressCheckOut> createState() => _AddNewAddressCheckOutState();
}

class _AddNewAddressCheckOutState extends State<AddNewAddressCheckOut> {
  final controller = PageController(viewportFraction: 0.88, keepPage: false);
  final pages = List.generate(
      listAddNewCard.length,
      (index) => AddNewCardsCarouselWidget(
          image: listAddNewCard[index].image,
          number: listAddNewCard[index].number,
          title: listAddNewCard[index].title));
  TextEditingController nameController = TextEditingController();
  TextEditingController cardController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController zipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: SizeConfig.imageSizeMultiplier * 5,
            color: Colors.black,
          ),
        ), //size5
        title: Text(
          'Add New Card',
          style: TextStyle(
            color: AppColors.primarydarkColor,
            fontWeight: FontWeight.w600,
            fontSize: AppTexts.size15,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 1,
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 22,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              padEnds: false,
              controller: controller,
              itemCount: pages.length,
              itemBuilder: (BuildContext context, index) {
                return pages[index % pages.length];
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.heightMultiplier * 4.6,
                ),
                TextView(
                  text: 'Card Holder Name',
                  size: AppTexts.size14,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                AuthTextInputField(
                  isoutline: true,
                  radius: AppWidths.width15,
                  hintText: '',
                  inputType: TextInputType.text,
                  contentpadding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.padding25,
                      vertical: AppPaddings.padding15),
                  hintSize: AppTexts.size14,
                  textEditingController: nameController,
                ),
                TextView(
                  text: 'Number Card',
                  size: AppTexts.size14,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                AuthTextInputField(
                  isoutline: true,
                  radius: AppWidths.width15,
                  hintText: '',
                  inputType: TextInputType.number,
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(AppRadius.radius8),
                    child: Image.asset(
                      'assets/images/card_logo.png',
                      height: SizeConfig.heightMultiplier * 1,
                      width: AppWidths.width15,
                    ),
                  ),
                  contentpadding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.padding25,
                      vertical: AppPaddings.padding15),
                  inputformatter: [
                    MaskedInputFormatter('#### #### #### ####'),
                  ],
                  hintSize: AppTexts.size14,
                  textEditingController: nameController,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 35.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Expired Date',
                            style: GoogleFonts.sourceSansPro(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: AppTexts.size14),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          AuthTextInputField(
                            isoutline: true,
                            contentpadding:
                                EdgeInsets.all(AppPaddings.padding15),
                            radius: SizeConfig.widthMultiplier * 4,
                            hintText: '',
                            textEditingController: dateController,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 8.5,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CVV/CVV2',
                              style: GoogleFonts.sourceSansPro(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: AppTexts.size14),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1,
                            ),
                            AuthTextInputField(
                              isoutline: true,
                              isPassword: true,
                              inputType: TextInputType.number,
                              contentpadding: EdgeInsets.symmetric(
                                  horizontal: AppPaddings.padding25,
                                  vertical: AppPaddings.padding15),
                              radius: SizeConfig.widthMultiplier * 4,
                              hintText: "",
                              textEditingController: cvvController,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 55.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Address',
                            style: GoogleFonts.sourceSansPro(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: AppTexts.size14),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          AuthTextInputField(
                            isoutline: true,
                            contentpadding: EdgeInsets.symmetric(
                                horizontal: AppPaddings.padding25,
                                vertical: AppPaddings.padding15),
                            radius: SizeConfig.widthMultiplier * 4,
                            hintText: '',
                            textEditingController: addressController,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 2,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Zip code',
                              style: GoogleFonts.sourceSansPro(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: AppTexts.size14),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1,
                            ),
                            AuthTextInputField(
                              isoutline: true,
                              inputType: TextInputType.number,
                              contentpadding: EdgeInsets.symmetric(
                                  horizontal: AppPaddings.padding25,
                                  vertical: AppPaddings.padding15),
                              radius: SizeConfig.widthMultiplier * 4,
                              hintText: "12345",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2.65,
                ),
                CustomTextButton(
                  callback: () {},
                  height: SizeConfig.heightMultiplier * 6.54,
                  colour: AppColors.primarylightColor,
                  width: AppWidths.widthFull,
                  title: 'Save',
                  textcolour: Colors.white,
                  radius: AppRadius.radius30,
                  fontWeight: FontWeight.w700,
                  fontSize: AppTexts.size16,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddNewCardsCarouselWidget extends StatelessWidget {
  final String image;
  final int number;
  final String title;
  const AddNewCardsCarouselWidget({
    Key? key,
    required this.image,
    required this.number,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppPaddings.padding25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                offset: const Offset(0, 4),
                blurRadius: 2,
                spreadRadius: 3),
          ],
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: AppPaddings.padding25),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 18,
              ),
              Row(
                children: [
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: AppTexts.size25, color: Colors.white),
                  ),
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: AppTexts.size25, color: Colors.white),
                  ),
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: AppTexts.size25, color: Colors.white),
                  ),
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: AppTexts.size25, color: Colors.white),
                  ),
                  Text(
                    ' $number',
                    style: TextStyle(
                        fontSize: AppTexts.size12, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3.1,
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: AppTexts.size12, color: Colors.white),
                  ),
                  SizedBox(
                    width: AppWidths.width30,
                  ),
                  Text(
                    '12/21',
                    style: TextStyle(
                        fontSize: AppTexts.size12, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
