import 'package:get/get.dart';

import 'controller.dart';

class MimeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MimeController>(() => MimeController());
  }
}
