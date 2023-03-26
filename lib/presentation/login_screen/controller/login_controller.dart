import 'package:application1/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';

class LoginController extends GetxController {
  TextEditingController frameFiveController = TextEditingController();
  TextEditingController frameNameController = TextEditingController();
  TextEditingController frameEmailController = TextEditingController();
  TextEditingController framePasswordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameFiveController.dispose();
  }
}
