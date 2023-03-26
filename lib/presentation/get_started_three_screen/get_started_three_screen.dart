import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'controller/get_started_three_controller.dart';

class GetStartedThreeScreen extends GetWidget<GetStartedThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment(0.5, -3.0616171314629196e-17),
                                end: Alignment(0.5, 0.9999999999999999),
                                colors: [
                              ColorConstant.indigo600,
                              ColorConstant.lightBlue401
                            ])),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(534.00),
                                      width: size.width,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(299.00),
                                                    width: size.width,
                                                    margin:
                                                        getMargin(bottom: 10),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topRight,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgBgcircle1,
                                                                  height:
                                                                      getVerticalSize(
                                                                          299.00),
                                                                  width: getHorizontalSize(
                                                                      375.00))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      top: 46,
                                                                      right: 16,
                                                                      bottom:
                                                                          46),
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgBackgroundcomp,
                                                                      height: getVerticalSize(
                                                                          79.00),
                                                                      width: getHorizontalSize(
                                                                          138.00))))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 42,
                                                        top: 10,
                                                        right: 42),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 84,
                                                                      right:
                                                                          84),
                                                              child: Text(
                                                                  "lbl_decode"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRubikLight3351)),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          284.00),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              25),
                                                                  child: Text(
                                                                      "msg_reach_out_to_fr"
                                                                          .tr,
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .txtRubikRegular1564
                                                                          .copyWith(
                                                                              height: 1.43))))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                    height: getSize(276.00),
                                                    width: getSize(276.00),
                                                    margin: getMargin(
                                                        left: 40,
                                                        top: 116,
                                                        right: 40,
                                                        bottom: 116),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    138.00))))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding:
                                                        getPadding(bottom: 10),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .img984ai11,
                                                        height: getVerticalSize(
                                                            455.00),
                                                        width:
                                                            getHorizontalSize(
                                                                375.00))))
                                          ]))),
                              Padding(
                                  padding: getPadding(
                                      left: 29,
                                      top: 229,
                                      right: 29,
                                      bottom: 34),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            height: getVerticalSize(10.00),
                                            margin:
                                                getMargin(top: 2, bottom: 1),
                                            child: SmoothIndicator(
                                                offset: 2,
                                                count: 3,
                                                axisDirection: Axis.horizontal,
                                                effect: ScrollingDotsEffect(
                                                    spacing: 10,
                                                    activeDotColor:
                                                        ColorConstant.whiteA700,
                                                    dotColor:
                                                        ColorConstant.gray50A5,
                                                    dotHeight:
                                                        getVerticalSize(10.00),
                                                    dotWidth: getHorizontalSize(
                                                        10.00)))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtGetstarted();
                                            },
                                            child: Text("lbl_get_started".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium14WhiteA700
                                                    .copyWith(height: 1.00)))
                                      ]))
                            ]))))));
  }

  onTapTxtGetstarted() {
    Get.toNamed(AppRoutes.registerScreen);
  }
}
