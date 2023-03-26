import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

import 'controller/private_chat_controller.dart';

class PrivateChatScreen extends GetWidget<PrivateChatController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      width: size.width,
                      decoration: BoxDecoration(color: ColorConstant.whiteA700),
                      child: Padding(
                          padding: getPadding(
                              left: 8, top: 56, right: 208, bottom: 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 12, bottom: 12),
                                    child: InkWell(
                                        onTap: () {
                                          onTapImgArrowleft();
                                        },
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getSize(24.00),
                                            width: getSize(24.00)))),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(24.00)),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgImage48X48,
                                        height: getSize(48.00),
                                        width: getSize(48.00),
                                        fit: BoxFit.cover)),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 23),
                                    child: Text("lbl_raneem".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRubikRegular18))
                              ]))),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                        Container(
                            height: getVerticalSize(1.00),
                            width: size.width,
                            decoration:
                                BoxDecoration(color: ColorConstant.gray200)),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    getPadding(left: 16, top: 21, right: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 2, bottom: 59),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: getSize(48.00),
                                                    width: getSize(48.00),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              24.00)),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgImage,
                                                                      height: getSize(
                                                                          48.00),
                                                                      width: getSize(
                                                                          48.00),
                                                                      fit: BoxFit
                                                                          .cover))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              24.00)),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgImage48X48,
                                                                      height: getSize(
                                                                          48.00),
                                                                      width: getSize(
                                                                          48.00),
                                                                      fit: BoxFit
                                                                          .cover)))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 193),
                                                    child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    24.00)),
                                                        child: CommonImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage48X48,
                                                            height:
                                                                getSize(48.00),
                                                            width:
                                                                getSize(48.00),
                                                            fit: BoxFit.cover)))
                                              ])),
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(4.00))),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            right: 130),
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        4.00)),
                                                            child: CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle,
                                                                height:
                                                                    getVerticalSize(
                                                                        100.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        102.00),
                                                                fit: BoxFit
                                                                    .cover)))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 10, top: 23),
                                                    child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    4.00)),
                                                        child: CommonImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle100X100,
                                                            height:
                                                                getSize(100.00),
                                                            width:
                                                                getSize(100.00),
                                                            fit:
                                                                BoxFit.cover))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 6,
                                                            top: 27,
                                                            right: 126),
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        4.00)),
                                                            child: CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle1,
                                                                height: getSize(
                                                                    100.00),
                                                                width: getSize(
                                                                    100.00),
                                                                fit: BoxFit
                                                                    .cover))))
                                              ])),
                                      Padding(
                                          padding:
                                              getPadding(top: 123, bottom: 187),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(20.00)),
                                              child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgImage40X40,
                                                  height: getSize(40.00),
                                                  width: getSize(40.00),
                                                  fit: BoxFit.cover)))
                                    ]))),
                        Container(
                            height: getVerticalSize(1.00),
                            width: size.width,
                            margin: getMargin(top: 214),
                            decoration:
                                BoxDecoration(color: ColorConstant.gray200)),
                        Container(
                            height: getVerticalSize(79.00),
                            width: size.width,
                            margin: getMargin(top: 38),
                            decoration: AppDecoration.fillWhiteA700,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgVector1,
                                          height: getVerticalSize(79.00),
                                          width: getHorizontalSize(375.00))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 50,
                                              top: 3,
                                              right: 50,
                                              bottom: 10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(left: 1),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 6,
                                                                      bottom:
                                                                          7),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgGroup1046,
                                                                  height:
                                                                      getSize(
                                                                          30.00),
                                                                  width: getSize(
                                                                      30.00))),
                                                          CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgUser,
                                                              height: getSize(
                                                                  43.00),
                                                              width: getSize(
                                                                  43.00))
                                                        ])),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 2, right: 3),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text("lbl_home".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRubikRomanRegular12
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.24)),
                                                          Text("lbl_profile".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRubikRomanRegular12
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.24))
                                                        ]))
                                              ])))
                                ]))
                      ])))
                ]),
            floatingActionButton: CustomFloatingButton(
                height: 58,
                width: 58,
                shape: FloatingButtonShape.CircleBorder29,
                child: CommonImageView(
                    svgPath: ImageConstant.imgComputer58X58,
                    height: getVerticalSize(29.00),
                    width: getHorizontalSize(29.00)))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
