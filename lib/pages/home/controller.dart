import 'package:get/get.dart';

import '../../apis/apis.dart';

class HomeController extends GetxController {
  // HomeController();
  final data = [].obs;
  final name = 'title'.obs;

  asyncLoadHomeDate() async {
    var res = await HomeAPI.index();
    data.value = res;
    update();
  }

  /// 初始
  @override
  void onInit() {
    super.onInit();
  }

  /// 可 async 拉取数据
  /// 可触发展示交互组件
  /// onInit 之后
  @override
  void onReady() {
    super.onReady();
    asyncLoadHomeDate();
  }

  /// 关闭页面
  /// 可以缓存数据，关闭各种控制器
  /// dispose 之前
  @override
  void onClose() {
    super.onClose();
  }

  /// 被释放
  /// 手动 释放各种内存资源
  @override
  void dispose() {
    super.dispose();
  }
}
