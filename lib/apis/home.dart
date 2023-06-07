import 'dart:convert';

import 'package:shop/entity/base.dart';
import 'package:shop/utils/utils.dart';

class HomeAPI {
  static Future<BaseEntity> index() async {
    var response = await HttpUtil().get('/index');
    // print('data:${jsonDecode(response.data)}');
    return response;
  }
}
