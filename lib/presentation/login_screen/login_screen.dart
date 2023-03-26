
import 'package:application1/classes/validators.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/core/utils/validation_functions.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../phone_screen/phone_screen.dart';
import 'controller/login_controller.dart';
class LoginScreen extends GetWidget<LoginController> {
  LoginController controller = Get.put(LoginController());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String Email;
  late String Password;
  String errortext = '';
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
                        child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                          padding: getPadding(bottom: 10),
                                          child: CommonImageView(
                                              imagePath: ImageConstant
                                                  .imgBgcircle777X375,
                                              height: getVerticalSize(777.00),
                                              width:
                                                  getHorizontalSize(375.00)))),
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 142,
                                              top: 56,
                                              right: 142,
                                              bottom: 56),
                                          child: CommonImageView(
                                              imagePath: ImageConstant
                                                  .imgTipplerlogore65X76,
                                              height: getVerticalSize(65.00),
                                              width:
                                                  getHorizontalSize(76.00)))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 26,
                                              top: 85,
                                              right: 26,
                                              bottom: 85),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(right: 10),
                                                    child: Text("lbl_login".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRubikRomanBold48)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 2,
                                                        top: 82,
                                                        right: 10),
                                                    child: Text("lbl_email".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRubikRomanBold18)),
                                                CustomTextFormField(
                                                    width: 319,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .frameEmailController,
                                                    hintText:
                                                        "msg_your_email_e_g".tr,
                                                    margin: getMargin(
                                                        left: 2, top: 22),
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    alignment: Alignment.center,
                                                    validator: (value) {
                                                      if (value == null ||
                                                          (!isValidEmail(value,
                                                              isRequired:
                                                                  true))) {
                                                        return "Please enter valid email";
                                                      }
                                                      return null;
                                                    },
                                                    value: controller
                                                        .frameEmailController
                                                        .text),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 2,
                                                        top: 35,
                                                        right: 10),
                                                    child: Text(
                                                        "lbl_password".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRubikRomanBold18)),
                                                CustomTextFormField(
                                                    width: 319,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .framePasswordController,
                                                    hintText:
                                                        "Enter your Password"
                                                            .tr,
                                                    margin: getMargin(
                                                        left: 2, top: 22),
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    alignment: Alignment.center,
                                                    validator: Validators
                                                        .validatePassword,
                                                    value: controller
                                                        .framePasswordController
                                                        .text),
                                                Container(
                                                    height:
                                                        getVerticalSize(1.00),
                                                    width: getHorizontalSize(
                                                        319.00),
                                                    margin: getMargin(
                                                        left: 2, top: 5),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .gray500)),
                                                Text(
                                                  '$errortext'
                                                ),
                                                CustomButton(
                                                    onTap: () async {
                                                      print('object');
                                                      Email = controller
                                                          .frameEmailController
                                                          .text;
                                                      Password = controller
                                                          .framePasswordController
                                                          .text;

                                                      // email link :: need to route to OTP page not home screen

                                                      //_auth.signInWithEmailAndPassword(email: Email, password: Password).then((_){
                                                      //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));});
                                                      bool emailIsVerified = false;
                                                      try {
                                                        UserCredential user = await _auth
                                                            .signInWithEmailAndPassword(
                                                            email: Email,
                                                            password:
                                                            Password);

                                                        if (user != null) {
                                                          emailIsVerified =
                                                          await user.user!
                                                              .emailVerified;
                                                          if (await emailIsVerified) {
                                                            try {
                                                              Get.to(() =>
                                                                  PhoneScreen());
                                                            } catch (e) {
                                                              print(e);
                                                            }
                                                          } else {
                                                            errortext =
                                                            'Please verify your email if you haven\'t already';
                                                            Fluttertoast
                                                                .showToast(
                                                                msg: "The email you entered is not verified or the password is wrong",
                                                                toastLength: Toast
                                                                    .LENGTH_LONG,
                                                                gravity: ToastGravity
                                                                    .CENTER,
                                                                timeInSecForIosWeb: 3,
                                                                backgroundColor: Colors
                                                                    .blueAccent,
                                                                textColor: Colors
                                                                    .white,
                                                                fontSize: 16.0);
                                                          }
                                                        }
                                                      }catch(e){
                                                        print(e);
                                                      }
                                                    },
                                                    width: 175,
                                                    text: "lbl_login".tr,
                                                    margin: getMargin(
                                                        left: 66,
                                                        top: 192,
                                                        right: 66),
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          onTapTxtDonthaveana();
                                                        },
                                                        child: Container(
                                                            margin: getMargin(
                                                                left: 66,
                                                                top: 16,
                                                                right: 61),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: "msg_don_t_have_an_a2"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(11),
                                                                              fontFamily: 'Rubik',
                                                                              fontWeight: FontWeight.w400)),
                                                                      TextSpan(
                                                                          text:
                                                                              " ",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(11),
                                                                              fontFamily: 'Rubik',
                                                                              fontWeight: FontWeight.w700)),
                                                                      TextSpan(
                                                                          text: "lbl_register"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(11),
                                                                              fontFamily: 'Rubik',
                                                                              fontWeight: FontWeight.w400)),
                                                                      TextSpan(
                                                                          text:
                                                                              " ",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.yellow800,
                                                                              fontSize: getFontSize(11),
                                                                              fontFamily: 'Rubik',
                                                                              fontWeight: FontWeight.w700)),
                                                                      TextSpan(
                                                                          text: "lbl_here"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.deepPurple500,
                                                                              fontSize: getFontSize(11),
                                                                              fontFamily: 'Rubik',
                                                                              fontWeight: FontWeight.w700))
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left))))
                                              ]))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 28,
                                              top: 89,
                                              right: 28,
                                              bottom: 89),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 2),
                                                    child: Text("lbl_13_32".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular12)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 239, bottom: 2),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSignal,
                                                              height:
                                                                  getVerticalSize(
                                                                      12.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      14.00)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 5,
                                                                      top: 2,
                                                                      bottom:
                                                                          1),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgSignal9X14,
                                                                  height:
                                                                      getVerticalSize(
                                                                          9.00),
                                                                  width: getHorizontalSize(
                                                                      14.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 5,
                                                                      top: 4,
                                                                      bottom:
                                                                          1),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgComputer,
                                                                  height:
                                                                      getVerticalSize(
                                                                          7.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          14.00)))
                                                        ]))
                                              ])))
                                ])))))));
  }

  onTapTxtDonthaveana() {
    Get.toNamed(AppRoutes.registerScreen);
  }
}
