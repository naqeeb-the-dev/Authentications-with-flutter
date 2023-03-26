import 'package:flutter/cupertino.dart';

import '/core/app_export.dart';
import '../models/authentication_model.dart';

class AuthenticationController extends GetxController {
  Rx<AuthenticationModel> authenticationModelObj = AuthenticationModel().obs;
  TextEditingController otpcontroller = TextEditingController();
  bool otpvisible = false;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
