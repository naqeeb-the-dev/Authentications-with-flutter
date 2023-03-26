import 'package:get/get.dart';

import '../controller/get_started_three_controller.dart';

class GetStartedThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStartedThreeController());
  }
}
