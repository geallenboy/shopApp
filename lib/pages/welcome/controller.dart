import 'package:shop/routers/routes.dart';
import 'package:shop/store/store.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final obj = ''.obs;

  WelcomeController();

  // 跳转 注册界面
  handleNavSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.Login);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
