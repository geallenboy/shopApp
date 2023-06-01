import '../modules/modules.dart';
import '../utils/utils.dart';

class UserAPI {
  static Future<UserLoginResponseEntity> logo({
    UserLoginRequestEntity? params,
  }) async {
    var response = await HttpUtil().post(
      '/login',
      data: params?.toJson(),
    );
    return UserLoginResponseEntity.fromJson(response);
  }
}

// var getInfo = () async {
//   return await DioRequest().httpRequest('/getInfo', true, 'get');
// };

// var getImage = () async {
//   return await DioRequest().httpRequest('/captchaImage', false, 'get');
// };

// var logInByClient = (data) async {
//   return await DioRequest().httpRequest('/login', false, 'post', data: data);
// };
