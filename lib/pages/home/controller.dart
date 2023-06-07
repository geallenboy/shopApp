import 'package:get/get.dart';
import 'package:shop/pages/home/module.dart';

import '../../apis/apis.dart';

class HomeController extends GetxController {
  var data = [].obs;
  var banner = [].obs;
  var menus = [].obs;
  final name = 'title'.obs;

  void asyncLoadHomeDate() async {
    var res = await HomeAPI.index();
    print(res.code);
    if (res.code == 200) {
      menus.addAll(res.data['menus']);
      banner.addAll(res.data['banner']);
    }
  }

  void getName() {
    name.value = '标题';
  }

  /// 初始
  @override
  void onInit() {
    getName();
    asyncLoadHomeDate();
    super.onInit();

    print('onInit');
  }

  /// onInit 之后
  @override
  void onReady() {
    super.onReady();

    print('onReady');
  }
}
