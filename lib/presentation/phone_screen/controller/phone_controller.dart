import 'package:application1/presentation/phone_screen/models/phone_model.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';

class PhoneController extends GetxController {
  TextEditingController frameFiveController = TextEditingController();

  Rx<PhoneModel> phoneModelObj = PhoneModel().obs;

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
