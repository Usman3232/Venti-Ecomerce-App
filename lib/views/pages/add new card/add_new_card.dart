import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/models/checkout_model/add_new_cards.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import '../../../constants/colors.dart';
import '../../../constants/width.dart';
import '../../../utils/size_config.dart';
import '../../widgets/auth_input_text_field.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
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
          onPressed: () {},
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
            fontSize: SizeConfig.textMultiplier * 1.92,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppHeights.height8,
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
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 6.35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppHeights.height35,
                ),
                TextView(
                  text: 'Card Holder Name',
                  size: SizeConfig.textMultiplier * 1.8,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: AppHeights.height8,
                ),
                AuthTextInputField(
                  isoutline: true,
                  radius: AppWidths.width15,
                  hintText: '',
                  inputType: TextInputType.text,
                  contentpadding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 6.35,
                      vertical: SizeConfig.widthMultiplier * 3.9),
                  hintSize: SizeConfig.textMultiplier * 1.8,
                  textEditingController: nameController,
                ),
                TextView(
                  text: 'Number Card',
                  size: SizeConfig.textMultiplier * 1.8,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: AppHeights.height8,
                ),
                AuthTextInputField(
                  isoutline: true,
                  radius: AppWidths.width15,
                  hintText: '',
                  inputType: TextInputType.number,
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset(
                      'assets/images/card_logo.png',
                      height: AppHeights.height8,
                      width: AppWidths.width15,
                    ),
                  ),
                  contentpadding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 6.35,
                      vertical: SizeConfig.widthMultiplier * 3.9),
                  inputformatter: [
                    MaskedInputFormatter('#### #### #### ####'),
                  ],
                  hintSize: SizeConfig.textMultiplier * 1.8,
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
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: SizeConfig.textMultiplier * 1.8),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          AuthTextInputField(
                            isoutline: true,
                            contentpadding: EdgeInsets.all(
                                SizeConfig.widthMultiplier * 3.9),
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
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: SizeConfig.textMultiplier * 1.8),
                            ),
                            SizedBox(
                              height: AppHeights.height8,
                            ),
                            AuthTextInputField(
                              isoutline: true,
                              isPassword: true,
                              inputType: TextInputType.number,
                              contentpadding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.widthMultiplier * 6.35,
                                  vertical: SizeConfig.widthMultiplier * 3.9),
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
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: SizeConfig.textMultiplier * 1.8),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          AuthTextInputField(
                            isoutline: true,
                            contentpadding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.widthMultiplier * 6.35,
                                vertical: SizeConfig.widthMultiplier * 3.9),
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
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: SizeConfig.textMultiplier * 1.8),
                            ),
                            SizedBox(
                              height: AppHeights.height8,
                            ),
                            AuthTextInputField(
                              isoutline: true,
                              inputType: TextInputType.number,
                              contentpadding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.widthMultiplier * 6.35,
                                  vertical: SizeConfig.widthMultiplier * 3.9),
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
                  height: AppHeights.height21,
                ),
                CustomTextButton(
                  callback: () {},
                  height: AppHeights.height52,
                  colour: AppColors.primarylightColor,
                  width: AppWidths.widthFull,
                  title: 'Save',
                  textcolour: Colors.white,
                  radius: 30,
                  fontWeight: FontWeight.w700,
                  fontSize: SizeConfig.textMultiplier * 2.04,
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
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.35),
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
          padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 6.35),
          child: Column(
            children: [
              SizedBox(
                height: AppHeights.height88,
              ),
              Row(
                children: [
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.85,
                        color: Colors.white),
                  ),
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.85,
                        color: Colors.white),
                  ),
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.85,
                        color: Colors.white),
                  ),
                  Text(
                    '•••• ',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.85,
                        color: Colors.white),
                  ),
                  Text(
                    ' $number',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.53,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: AppHeights.height25,
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.53,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: AppWidths.width30,
                  ),
                  Text(
                    '12/21',
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.53,
                        color: Colors.white),
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
