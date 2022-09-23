import 'dart:async';
import 'package:country_picker/country_picker.dart';

import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import 'package:ecommerce_app/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/icons.dart';
import '../../../../constants/images.dart';
import '../../../../constants/radius.dart';
import '../../../../constants/textsize.dart';

import '../../../../utils/size_config.dart';

class SellerProfile extends StatefulWidget {
  const SellerProfile({Key? key}) : super(key: key);

  @override
  State<SellerProfile> createState() => _SellerProfileState();
}

class _SellerProfileState extends State<SellerProfile> {
  List<LatLng> latLng = [
    const LatLng(33.738045, 73.084488),
    const LatLng(33.567997728, 72.635997456)
  ];
  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(33.738045, 73.084488),
    zoom: 17,
  );
  final Completer<GoogleMapController> _controller = Completer();

  var countryCode = 'US';
  var flag = '🇺🇸';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LeadingProfileWidget(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppPaddings.padding24,
                  vertical: AppPaddings.padding8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full name',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1,
                  ),
                  AuthTextInputField(
                    radius: SizeConfig.widthMultiplier * 3.8,
                    hintText: 'Full Name',
                    isoutline: true,
                    contentpadding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.padding24,
                    ),
                    hintSize: SizeConfig.textMultiplier * 1.6,
                    // textEditingController: nameController,
                  ),
                  Text(
                    'Category',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1,
                  ),
                  AuthTextInputField(
                    radius: SizeConfig.widthMultiplier * 3.8,
                    hintText: 'Select category',
                    isoutline: true,
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      onPressed: () {},
                    ),
                    contentpadding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.padding24,
                    ),
                    hintSize: SizeConfig.textMultiplier * 1.6,
                    // textEditingController: nameController,
                  ),
                  Text(
                    'Description',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1,
                  ),
                  AuthTextInputField(
                    radius: SizeConfig.widthMultiplier * 3.8,
                    hintText: 'Enter Store Description',
                    isoutline: true,
                    maxLine: 4,
                    contentpadding: EdgeInsets.symmetric(
                        horizontal: AppPaddings.padding24,
                        vertical: AppPaddings.padding15),
                    hintSize: SizeConfig.textMultiplier * 1.6,
                    // textEditingController: nameController,
                  ),
                  Text(
                    'Website',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1,
                  ),
                  AuthTextInputField(
                    radius: SizeConfig.widthMultiplier * 3.8,
                    hintText: 'Enter your website',
                    isoutline: true,
                    contentpadding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.padding24,
                    ),
                    hintSize: SizeConfig.textMultiplier * 1.6,
                    // textEditingController: nameController,
                  ),
                  Text(
                    'Social Media Links',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1,
                  ),
                  AuthTextInputField(
                    radius: SizeConfig.widthMultiplier * 3.8,
                    hintText: 'Social Media Links',
                    isoutline: true,
                    contentpadding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.padding24,
                    ),
                    hintSize: SizeConfig.textMultiplier * 1.6,
                    // textEditingController: nameController,
                  ),
                  Text(
                    'GST',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1,
                  ),
                  AuthTextInputField(
                    radius: SizeConfig.widthMultiplier * 3.8,
                    hintText: 'Enter GST',
                    isoutline: true,
                    contentpadding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.padding24,
                    ),
                    hintSize: SizeConfig.textMultiplier * 1.6,
                    // textEditingController: nameController,
                  ),
                  Text(
                    'Email',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1,
                  ),
                  AuthTextInputField(
                    radius: SizeConfig.widthMultiplier * 3.8,
                    hintText: 'Email',
                    isoutline: true,
                    inputType: TextInputType.emailAddress,
                    contentpadding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.padding24,
                    ),
                    hintSize: SizeConfig.textMultiplier * 1.6,
                    // textEditingController: nameController,
                  ),
                  Text(
                    'Contact Number',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showCountryPicker(
                              context: context,
                              onSelect: (Country country) {
                                setState(() {
                                  countryCode = country.countryCode;
                                  flag = country.flagEmoji;
                                });
                              });
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              bottom: SizeConfig.heightMultiplier * 2.5),
                          height: SizeConfig.heightMultiplier * 6,
                          width: SizeConfig.widthMultiplier * 25,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(
                                SizeConfig.widthMultiplier * 4),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '$flag ',
                                  style: TextStyle(
                                      fontSize: SizeConfig.textMultiplier * 3),
                                ),
                                Text(
                                  countryCode,
                                  style: TextStyle(
                                      fontSize: SizeConfig.textMultiplier * 2,
                                      color: Colors.blueGrey),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Colors.blueGrey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 2,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: SizeConfig.widthMultiplier * 3),
                          child: AuthTextInputField(
                            isoutline: true,
                            contentpadding:
                                EdgeInsets.all(SizeConfig.widthMultiplier * 3),
                            radius: SizeConfig.widthMultiplier * 4,
                            inputAction: TextInputAction.done,
                            hintText: "(+62) 8888 7777",
                            inputformatter: [
                              MaskedInputFormatter('(+##) #### ######'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  MapUploadButtonWidget(
                      controller: _controller, kGooglePlex: _kGooglePlex)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MapUploadButtonWidget extends StatelessWidget {
  const MapUploadButtonWidget({
    Key? key,
    required Completer<GoogleMapController> controller,
    required CameraPosition kGooglePlex,
  })  : _controller = controller,
        _kGooglePlex = kGooglePlex,
        super(key: key);

  final Completer<GoogleMapController> _controller;
  final CameraPosition _kGooglePlex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upload Pan and Adhaar',
          style: GoogleFonts.sourceSansPro(
            fontWeight: FontWeight.w600,
            fontSize: AppTexts.size14,
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.75,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: SizeConfig.heightMultiplier * 19.5,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
              color: AppColors.primarylightColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Icon(
                Icons.file_upload_outlined,
                color: Colors.white,
                size: SizeConfig.imageSizeMultiplier * 10,
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2.5,
        ),
        Text(
          'Upload Certificate of Completion',
          style: GoogleFonts.sourceSansPro(
            fontWeight: FontWeight.w600,
            fontSize: AppTexts.size14,
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.75,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: SizeConfig.heightMultiplier * 13.7,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
              color: AppColors.primarylightColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Icon(
                Icons.file_upload_outlined,
                color: Colors.white,
                size: SizeConfig.imageSizeMultiplier * 10,
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2.5,
        ),
        Text(
          'Location',
          style: GoogleFonts.sourceSansPro(
            fontWeight: FontWeight.w600,
            fontSize: AppTexts.size14,
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.2,
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.radius20)),
          child: SizedBox(
            height: SizeConfig.heightMultiplier * 12.6,
            width: SizeConfig.widthMultiplier * 100,
            child: GoogleMap(
              zoomControlsEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              initialCameraPosition: _kGooglePlex,
              mapType: MapType.normal,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 3.4),
        CustomTextButton(
            title: 'Save',
            colour: AppColors.primarylightColor,
            height: SizeConfig.heightMultiplier * 7.1,
            width: SizeConfig.widthMultiplier * 100,
            textcolour: Colors.white,
            fontSize: AppTexts.size14,
            radius: AppRadius.radius15,
            callback: () {}),
        SizedBox(
          height: SizeConfig.heightMultiplier * 20,
        )
      ],
    );
  }
}

class LeadingProfileWidget extends StatelessWidget {
  const LeadingProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 27,
      width: SizeConfig.widthMultiplier * 100,
      child: Stack(
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 20.6,
            width: SizeConfig.widthMultiplier * double.infinity,
            child: SvgPicture.asset(
              AppIcons.largedrawerlogo,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: SizeConfig.imageSizeMultiplier * 26.2,
                  width: SizeConfig.imageSizeMultiplier * 26.2,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primarylightColor.withOpacity(0.3),
                      border: Border.all(color: Colors.white, width: 3)),
                  child: Padding(
                    padding: EdgeInsets.all(AppPaddings.padding22),
                    child: Image.asset(AppImages.sellerHouse),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.imageSizeMultiplier * 10,
                  width: SizeConfig.imageSizeMultiplier * 20,
                  child: SvgPicture.asset(AppIcons.camera),
                )
              ],
            ),
          ),
          Positioned(
            left: SizeConfig.widthMultiplier * 2.2,
            top: SizeConfig.widthMultiplier * 13,
            right: SizeConfig.widthMultiplier * 2.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
                Text(
                  'Seller Profile',
                  style: GoogleFonts.poppins(
                    fontSize: AppTexts.size14,
                    color: AppColors.primarydarkColor,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
