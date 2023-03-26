import 'package:application1/core/app_export.dart';
import 'package:application1/presentation/home_screen/home_screen.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'controller/authentication_controller.dart';

class AuthenticationScreen extends GetWidget<AuthenticationController> {
  AuthenticationController controller = Get.put(AuthenticationController());
  AuthenticationScreen(
      this.phonenumber){
    print(phonenumber);
  verifyPhone(phonenumber);
  }
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  late String OTP;
  String phonenumber;
   String verificationID='';

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
                      begin: Alignment(
                        0.5,
                        -3.0616171314629196e-17,
                      ),
                      end: Alignment(
                        0.5,
                        0.9999999999999999,
                      ),
                      colors: [
                        ColorConstant.indigo600,
                        ColorConstant.lightBlue400,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: getVerticalSize(
                            179.00,
                          ),
                          width: size.width,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgBgcircle,
                                  height: getVerticalSize(
                                    179.00,
                                  ),
                                  width: getHorizontalSize(
                                    375.00,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 142,
                                    top: 53,
                                    right: 142,
                                    bottom: 53,
                                  ),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imgTipplerlogore,
                                    height: getVerticalSize(
                                      65.00,
                                    ),
                                    width: getHorizontalSize(
                                      76.00,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 54,
                            top: 22,
                            right: 54,
                          ),
                          child: Text(
                            "OTP Verification".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRubikRomanSemiBold32.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: getHorizontalSize(
                            214.00,
                          ),
                          margin: getMargin(
                            left: 72,
                            top: 21,
                            right: 72,
                          ),
                          child: Text(
                            "Enter the OTP we just sent on your phone number".tr,
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtRubikRomanMedium14.copyWith(
                              height: 1.57,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 24,
                            top: 22,
                            right: 24,
                          ),
                          child: PinCodeTextField(
                            length: 6,
                            obscureText: false,
                            animationType: AnimationType.fade,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 50,
                              fieldWidth: 40,
                              borderWidth: 0,
                              activeFillColor: Colors.white,
                              inactiveFillColor: Colors.blueAccent
                            ),
                            animationDuration: const Duration(milliseconds: 300),
                            backgroundColor: Colors.transparent,
                            enableActiveFill: true,
                            controller: otpController,
                            onCompleted: (v) {
                              debugPrint("Completed");
                            },
                            onChanged: (value) {
                              debugPrint(value);

                              value = controller.otpcontroller.value.text;
                              print(controller.otpcontroller.value.text);
                            },
                            beforeTextPaste: (text) {
                              return true;
                            },
                            appContext: context,
                          ),
                        ),


                      ),
                      CustomButton(
                        width: 296,
                        text: "Verify OTP".tr,
                        margin: getMargin(
                          left: 24,
                          top: 41,
                          right: 24,
                        ),
                        alignment: Alignment.center,
                        onTap: (){
                          signIn();
                        },
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 24,
                            top: 23,
                            right: 24,
                            bottom: 5,
                          ),
                          child: GestureDetector(
                            onTap: (){
                              verifyPhone(phonenumber);
                            },
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Didn't Get OTP?".tr,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w400,
                                      height: 1.57,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                      color: ColorConstant.bluegray800,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w400,
                                      height: 1.57,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Resend OTP".tr,
                                    style: TextStyle(
                                      color: ColorConstant.deepPurple500,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w400,
                                      height: 1.57,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),

          ),
        );
  }
  void verifyPhone(String phone) async {
    await auth.verifyPhoneNumber(
      timeout: const Duration(minutes: 2),
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        print('verification completed running');
        await auth.signInWithCredential(credential).then((value){

          print("You are logged in successfully");
          Get.to(()=>HomeScreen());
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print('verification failed running');

        print(e.message);
      },

       codeSent: (String verificationId, int? resendToken) {
        verificationID = verificationId;
        print('code sent running');

      },
      codeAutoRetrievalTimeout: (String verificationId) {

      },
    );
  }
  void signIn() async {

    PhoneAuthCredential credential =
    PhoneAuthProvider.credential(verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then((value){
      print("You are logged in successfully");
      Fluttertoast.showToast(
          msg: "You are logged in successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blueAccent,
          textColor: Colors.white,
          fontSize: 16.0
      );
Get.to(()=>HomeScreen()) ; },  );
  }
}
