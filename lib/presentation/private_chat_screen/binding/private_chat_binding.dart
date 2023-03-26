import 'package:get/get.dart';

import '../controller/private_chat_controller.dart';

class PrivateChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrivateChatController());
  }
}
