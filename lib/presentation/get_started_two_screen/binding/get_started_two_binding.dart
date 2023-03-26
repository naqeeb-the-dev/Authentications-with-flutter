import 'package:get/get.dart';

import '../controller/get_started_two_controller.dart';

class GetStartedTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStartedTwoController());
  }
}
