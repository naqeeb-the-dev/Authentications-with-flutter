import 'package:application1/presentation/private_chat_screen/models/private_chat_model.dart';

import '/core/app_export.dart';

class PrivateChatController extends GetxController {
  Rx<PrivateChatModel> privateChatModelObj = PrivateChatModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
