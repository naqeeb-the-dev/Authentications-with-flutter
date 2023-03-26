import 'package:application1/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';

class RegisterController extends GetxController {
  TextEditingController frameNameController = TextEditingController();
  TextEditingController frameEmailController = TextEditingController();
  TextEditingController framePasswordController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameNameController.dispose();
    frameEmailController.dispose();
    framePasswordController.dispose();
  }
}
