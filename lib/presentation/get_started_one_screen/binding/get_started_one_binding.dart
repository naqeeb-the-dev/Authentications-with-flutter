import 'package:get/get.dart';

import '../controller/get_started_one_controller.dart';

class GetStartedOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStartedOneController());
  }
}
