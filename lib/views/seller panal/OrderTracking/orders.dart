import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/padding.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../constants/icons.dart';
import '../../../../constants/textsize.dart';
import '../sellers model/order_status_seller_model.dart';

class OrdersDelivered extends StatefulWidget {
  const OrdersDelivered({Key? key}) : super(key: key);

  @override
  State<OrdersDelivered> createState() => _OrdersDeliveredState();
}

class _OrdersDeliveredState extends State<OrdersDelivered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: AppPaddings.padding15),
              child: SvgPicture.asset(
                AppIcons.message,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppHeights.height10,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listoforder.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        height: AppHeights.height88,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9.0, vertical: 15),
                          child: Row(
                            children: [
                              Container(
                                height: AppHeights.height57,
                                width: AppWidths.width64,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.grey.withOpacity(0.4),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Image.asset(
                                    listoforder[i].image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: AppWidths.width15,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: listoforder[i].title,
                                        style: TextStyle(
                                            fontSize: AppTexts.size14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: listoforder[i].location,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: AppTexts.size10)),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          listoforder[i].noofproducts,
                                          style: TextStyle(
                                            fontSize: AppTexts.size10,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        Text(
                                          listoforder[i].price,
                                          style: TextStyle(
                                            fontSize: AppTexts.size12,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 65,
                                          decoration: const BoxDecoration(
                                            color: Color(0xff48D145),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              listoforder[i].status,
                                              style: const TextStyle(
                                                fontSize: 7,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 1,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        // Text(listoforder[i].date,
                                        //   style: const TextStyle(
                                        //     fontSize: 10,
                                        //     fontWeight: FontWeight.w500,
                                        //     letterSpacing: 1,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: AppHeights.height10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
