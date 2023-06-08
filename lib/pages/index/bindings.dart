import 'package:get/get.dart';
import 'package:shop/pages/cart/index.dart';
import 'package:shop/pages/home/index.dart';
import 'controller.dart';

class IndexBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndexController>(() => IndexController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<CartController>(() => CartController());
  }
}
