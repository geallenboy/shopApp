// ignore_for_file: slash_for_doc_comments

// import '../utils/request.dart';
// /**
//  * 公共接口 ，优惠券接口 , 行业此讯 , 手机号码注册
//  * 
// */

// ///获取主页数据 无需授权
// var getIndexData = () async {
//   return await DioRequest().httpRequest('/index', false, 'get');
// };

// //获取登录授权login
// var getLogo = () async {
//   return await DioRequest().httpRequest('/wechat/getLogo', false, 'get');
// };

// /**
//  * 保存form_id
//  * @param object data 
//  */
// var setFormId = (data) async {
//   return await DioRequest()
//       .httpRequest('/wechat/set_form_id', true, 'post', data: data);
// };

// /**
//  * 领取优惠卷
//  * @param object data 
//  */
// var setCouponReceive = (data) async {
//   return await DioRequest()
//       .httpRequest('/coupon/receive', true, 'post', data: data);
// };
// /**
//  * 优惠券列表
//  * @param object data 
//  */
// var getCoupons = (data) async {
//   return await DioRequest().httpRequest('/coupons', true, 'get', data: data);
// };
