import 'package:shop/utils/utils.dart';

class HomeAPI {
  static index() async {
    var response = await HttpUtil().get('/index');
    return response;
  }
}
