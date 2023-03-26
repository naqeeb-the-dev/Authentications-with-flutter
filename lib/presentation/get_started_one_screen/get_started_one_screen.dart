import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'controller/get_started_one_controller.dart';

class GetStartedOneScreen extends GetWidget<GetStartedOneController> {
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
                              ColorConstant.indigo500,
                              ColorConstant.lightBlue400
                            ])),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(305.00),
                                      width: size.width,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgBgcircle,
                                                    height:
                                                        getVerticalSize(305.00),
                                                    width: getHorizontalSize(
                                                        375.00))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 92,
                                                        top: 35,
                                                        right: 92,
                                                        bottom: 35),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgTipplerlogore,
                                                        height: getVerticalSize(
                                                            221.00),
                                                        width:
                                                            getHorizontalSize(
                                                                190.00))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 27, top: 128, right: 27),
                                      child: Text("lbl_welcome".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRubikMedium4539))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 27,
                                          top: 260,
                                          right: 27,
                                          bottom: 48),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(10.00),
                                                margin: getMargin(
                                                    top: 1, bottom: 5),
                                                child: SmoothIndicator(
                                                    offset: 0,
                                                    count: 3,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    effect: ScrollingDotsEffect(
                                                        spacing: 10,
                                                        activeDotColor:
                                                            ColorConstant
                                                                .gray50,
                                                        dotColor: ColorConstant
                                                            .gray50Bf,
                                                        dotHeight:
                                                            getVerticalSize(
                                                                10.00),
                                                        dotWidth:
                                                            getHorizontalSize(
                                                                10.00)))),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtSkip();
                                                },
                                                child: Padding(
                                                    padding:
                                                        getPadding(left: 212),
                                                    child: Text("lbl_skip".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoMedium14
                                                            .copyWith(
                                                                height: 1.00))))
                                          ])))
                            ]))))));
  }

  onTapTxtSkip() {
    Get.toNamed(AppRoutes.getStartedTwoScreen);
  }
}
