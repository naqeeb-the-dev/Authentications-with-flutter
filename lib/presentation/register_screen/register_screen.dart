import 'package:application1/classes/validators.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/presentation/login_screen/login_screen.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:crypt/crypt.dart';
import 'package:crypton/crypton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:stego/stego/lib/classes/user.dart';
import 'package:random_string_generator/random_string_generator.dart';

import '../../classes/secureStorage.dart';
import '../../classes/user.dart';
import 'controller/register_controller.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  final _auth = FirebaseAuth.instance;

  late String Name;
  late String Email;
  late String Password;
  late String publicKey;
  late String privateKey;

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
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: getPadding(bottom: 10),
                                      child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgBgcircle774X375,
                                          height: getVerticalSize(774.00),
                                          width: getHorizontalSize(375.00)))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 142,
                                          top: 53,
                                          right: 142,
                                          bottom: 53),
                                      child: CommonImageView(
                                          imagePath: ImageConstant
                                              .imgTipplerlogore65X76,
                                          height: getVerticalSize(65.00),
                                          width: getHorizontalSize(76.00)))),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26,
                                          top: 88,
                                          right: 26,
                                          bottom: 88),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(right: 10),
                                                child: Text("lbl_register".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikRomanBold48)),
                                            //Name of the user
                                            Padding(
                                                padding: getPadding(
                                                    left: 2,
                                                    top: 80,
                                                    right: 10),
                                                child: Text("lbl_name".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikRomanBold18)),
                                            CustomTextFormField(
                                                width: 319,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .frameNameController,
                                                hintText:
                                                    "msg_your_name_e_g".tr,
                                                margin:
                                                    getMargin(left: 2, top: 22),
                                                alignment: Alignment.center,
                                                validator: Validators
                                                    .validateUsername),
                                            Padding(
                                                padding: getPadding(
                                                    left: 2,
                                                    top: 35,
                                                    right: 10),
                                                child: Text("lbl_email".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikRomanBold18)),
                                            CustomTextFormField(
                                                width: 319,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .frameEmailController,
                                                hintText:
                                                    "msg_your_email_e_g".tr,
                                                margin:
                                                    getMargin(left: 2, top: 22),
                                                textInputAction:
                                                    TextInputAction.done,
                                                alignment: Alignment.center,
                                                validator:
                                                    Validators.validateEmail),
                                            Padding(
                                                padding: getPadding(
                                                    left: 2,
                                                    top: 35,
                                                    right: 10),
                                                child: Text("lbl_password".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikRomanBold18)),
                                            CustomTextFormField(
                                                width: 319,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .framePasswordController,
                                                hintText:
                                                    "Enter your Password".tr,
                                                margin:
                                                    getMargin(left: 2, top: 22),
                                                isObscureText: true,
                                                textInputAction:
                                                    TextInputAction.done,
                                                alignment: Alignment.center,
                                                validator:
                                                    Validators.validatePassword,
                                                value: controller
                                                    .framePasswordController
                                                    .text),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(319.00),
                                                margin:
                                                    getMargin(left: 2, top: 5),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray500)),
                                            CustomButton(
                                                onTap: () async {
    Email = controller
        .frameEmailController
        .text;
    Password = controller
        .framePasswordController
        .text;
    Name = controller
        .frameNameController.text;
    // print("tapped on container");
    //print(controller.framePasswordController.text);
    print(Email);
    print(Password);
    print(Name);

    //Generate PK, PK
    final rsaKeypair =
    RSAKeypair.fromRandom();
    publicKey = rsaKeypair
        .publicKey
        .toPEM();
    privateKey = rsaKeypair
        .privateKey
        .toPEM();
    print(
    "The public key is $publicKey");
    print(
    "The private key is $privateKey");

    //Send PK to local storage
    await userSecureStorage
        .setPrivateKey(
    privateKey);

    //Generate Salt
    var generator =
    RandomStringGenerator(
    //fixedLength: 10,
    minLength: 10,
    maxLength: 25,
    );
    var salt =
    generator.generate();
    print(salt);

    //Hashing
    //final hashPass = Crypt.sha256(Password);
    //String hashPass2 = hashPass.toString();
    //print(hashPass2);

    //Hashing2
    final hashPass = Crypt.sha256(
    Password,
    salt: salt);
    String hashPass2 =
    hashPass.toString();
    print(hashPass2);

    //Send data to user class
    AppUser obj1 = new AppUser(
    email: Email,
    username: Name,
    password: hashPass2,
    publicKey: publicKey,
    privateKey: privateKey,
    salt: salt,
    );


    // email link :: need to route to OTP page not home screen'
  bool isverified = false;
    UserCredential user = await _auth.createUserWithEmailAndPassword(email: Email, password: Password) ;


    if (user != null) {
    user.user!.sendEmailVerification();

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen())); }



                                                  //_auth.signInWithEmailAndPassword(email: Email, password: Password).then((_){
                                                  //

                                                //   try {
                                                //     final newuser = await _auth
                                                //         .createUserWithEmailAndPassword(
                                                //             email: Email,
                                                //             password:
                                                //                 hashPass2);
                                                //     Navigator.pushNamed(context,
                                                //         AppRoutes.homeScreen);
                                                //   } catch (e) {
                                                //     print(e);
                                                //   }
                                                 },
                                                width: 175,
                                                text: "lbl_register".tr,
                                                margin: getMargin(
                                                    left: 66,
                                                    top: 91,
                                                    right: 66),
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapTxtAlreadyhavean();
                                                    },
                                                    child: Container(
                                                        margin: getMargin(
                                                            left: 66,
                                                            top: 16,
                                                            right: 64),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "msg_already_have_an2"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .black900,
                                                                          fontSize: getFontSize(
                                                                              11),
                                                                          fontFamily:
                                                                              'Rubik',
                                                                          fontWeight:
                                                                              FontWeight.w400)),
                                                                  TextSpan(
                                                                      text: " ",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .black900,
                                                                          fontSize: getFontSize(
                                                                              11),
                                                                          fontFamily:
                                                                              'Rubik',
                                                                          fontWeight:
                                                                              FontWeight.w700)),
                                                                  TextSpan(
                                                                      text: "lbl_login"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .black900,
                                                                          fontSize: getFontSize(
                                                                              11),
                                                                          fontFamily:
                                                                              'Rubik',
                                                                          fontWeight:
                                                                              FontWeight.w400)),
                                                                  TextSpan(
                                                                      text: " ",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .yellow800,
                                                                          fontSize: getFontSize(
                                                                              11),
                                                                          fontFamily:
                                                                              'Rubik',
                                                                          fontWeight:
                                                                              FontWeight.w700)),
                                                                  TextSpan(
                                                                      text: "lbl_here"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .deepPurple500,
                                                                          fontSize: getFontSize(
                                                                              11),
                                                                          fontFamily:
                                                                              'Rubik',
                                                                          fontWeight:
                                                                              FontWeight.w700))
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left))))
                                          ]))),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 28,
                                          top: 86,
                                          right: 28,
                                          bottom: 86),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("lbl_13_32".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
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
                                                          svgPath: ImageConstant
                                                              .imgSignal,
                                                          height:
                                                              getVerticalSize(
                                                                  12.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  14.00)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 2,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgSignal9X14,
                                                              height:
                                                                  getVerticalSize(
                                                                      9.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      14.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 4,
                                                              bottom: 1),
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

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
