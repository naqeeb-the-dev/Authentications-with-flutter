import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_floating_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';

class HomeScreen extends GetWidget<HomeController> {
  HomeController controller = Get.put(HomeController());
  final _auth = FirebaseAuth.instance;
  //
  late User SignedInUser;

  @override
  void onInit() {
    super.controller.onInit();
    getCurrentuser();
  }

  void getCurrentuser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        SignedInUser = user;
        //print("in getCurrentuser");
        //print(SignedInUser.email);

      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, -3.0616171314629196e-17),
                        end: Alignment(0.5, 0.9999999999999999),
                        colors: [
                      ColorConstant.whiteA700,
                      ColorConstant.gray100
                    ])),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: SingleChildScrollView(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(199.00),
                                            width: size.width,
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup1745,
                                                          height:
                                                              getVerticalSize(
                                                                  199.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  375.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 44,
                                                              top: 12,
                                                              right: 44,
                                                              bottom: 12),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                19,
                                                                            right:
                                                                                19),
                                                                        child: Text(
                                                                            "lbl_hello"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtQuicksandBold32))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(109.00),
                                                                        width: getHorizontalSize(241.00),
                                                                        margin: getMargin(top: 7),
                                                                        child: Stack(alignment: Alignment.topRight, children: [
                                                                          Align(
                                                                              alignment: Alignment.bottomLeft,
                                                                              child: Padding(padding: getPadding(top: 10, right: 10), child: CommonImageView(imagePath: ImageConstant.imgTipplerlogore61X54, height: getVerticalSize(61.00), width: getHorizontalSize(54.00)))),
                                                                          Align(
                                                                              alignment: Alignment.topRight,
                                                                              child: Padding(padding: getPadding(left: 10, bottom: 10), child: Text("lbl_kholoud".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtQuicksandBold48)))
                                                                        ])))
                                                              ])))
                                                ]))),
                                    Container(
                                        margin: getMargin(
                                            left: 9, top: 57, right: 10),
                                        decoration: AppDecoration.fillCyan200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder13),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 7,
                                                      bottom: 15),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                            height:
                                                                getSize(48.00),
                                                            width:
                                                                getSize(48.00),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: ClipRRect(
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                              24.00)),
                                                                          child: CommonImageView(
                                                                              imagePath: ImageConstant.imgImage,
                                                                              height: getSize(48.00),
                                                                              width: getSize(48.00),
                                                                              fit: BoxFit.cover))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Container(
                                                                          height: getSize(48.00),
                                                                          width: getSize(48.00),
                                                                          child: Stack(alignment: Alignment.centerLeft, children: [
                                                                            Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(24.00)), child: CommonImageView(imagePath: ImageConstant.imgImage48X48, height: getSize(48.00), width: getSize(48.00), fit: BoxFit.cover))),
                                                                            Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                    height: getSize(48.00),
                                                                                    width: getSize(48.00),
                                                                                    child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                      Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(24.00)), child: CommonImageView(imagePath: ImageConstant.imgImage, height: getSize(48.00), width: getSize(48.00), fit: BoxFit.cover))),
                                                                                      Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(24.00)), child: CommonImageView(imagePath: ImageConstant.imgImage48X48, height: getSize(48.00), width: getSize(48.00), fit: BoxFit.cover)))
                                                                                    ])))
                                                                          ])))
                                                                ])),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 16,
                                                                top: 16,
                                                                bottom: 15),
                                                            decoration:
                                                                AppDecoration
                                                                    .txtOutlineBlack9003f,
                                                            child: Text(
                                                                "lbl_raneem".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRubikRegular14))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 26,
                                                      right: 7,
                                                      bottom: 30),
                                                  child: Text("lbl_16_04".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRegular12))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 9, top: 8, right: 10),
                                        child: Obx(() => ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller.homeModelObj
                                                .value.homeItemList.length,
                                            itemBuilder: (context, index) {
                                              HomeItemModel model = controller
                                                  .homeModelObj
                                                  .value
                                                  .homeItemList[index];
                                              return HomeItemWidget(model);
                                            }))),
                                    Container(
                                        margin: getMargin(
                                            left: 9, top: 7, right: 10),
                                        decoration: AppDecoration.fillIndigo501
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder13),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 9,
                                                      bottom: 13),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                            height:
                                                                getSize(48.00),
                                                            width:
                                                                getSize(48.00),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: ClipRRect(
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                              24.00)),
                                                                          child: CommonImageView(
                                                                              imagePath: ImageConstant.imgImage,
                                                                              height: getSize(48.00),
                                                                              width: getSize(48.00),
                                                                              fit: BoxFit.cover))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: ClipRRect(
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                              24.00)),
                                                                          child: CommonImageView(
                                                                              imagePath: ImageConstant.imgImage4,
                                                                              height: getSize(48.00),
                                                                              width: getSize(48.00),
                                                                              fit: BoxFit.cover)))
                                                                ])),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 16,
                                                                top: 16,
                                                                bottom: 15),
                                                            decoration:
                                                                AppDecoration
                                                                    .txtOutlineBlack9003f,
                                                            child: Text(
                                                                "lbl_layan".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRubikRegular14))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 28,
                                                      right: 7,
                                                      bottom: 28),
                                                  child: Text("lbl_16_04".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRegular12))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(79.00),
                                            width: size.width,
                                            margin: getMargin(top: 107),
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgVector1,
                                                          height:
                                                              getVerticalSize(
                                                                  79.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  375.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 50,
                                                              top: 3,
                                                              right: 50,
                                                              bottom: 10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
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
                                                                            left:
                                                                                1),
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
                                                                              padding: getPadding(top: 6, bottom: 7),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgGroup1046, height: getSize(30.00), width: getSize(30.00))),
                                                                          CommonImageView(
                                                                              svgPath: ImageConstant.imgUser,
                                                                              height: getSize(43.00),
                                                                              width: getSize(43.00))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 2,
                                                                        right:
                                                                            3),
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
                                                                          Text(
                                                                              "lbl_home".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikRomanRegular12.copyWith(letterSpacing: 0.24)),
                                                                          Text(
                                                                              "lbl_profile".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikRomanRegular12.copyWith(letterSpacing: 0.24))
                                                                        ]))
                                                              ])))
                                                ])))
                                  ]))))
                    ])),
            floatingActionButton: CustomFloatingButton(
                height: 46,
                width: 46,
                child: CommonImageView(
                    svgPath: ImageConstant.imgUser46X46,
                    height: getVerticalSize(23.00),
                    width: getHorizontalSize(23.00)))));
  }
}
