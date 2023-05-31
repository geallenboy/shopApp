import 'package:shop/pages/index.dart';
import 'package:shop/pages/login.dart';
import 'package:shop/pages/cart/index.dart';
import 'package:shop/pages/goods_cate/index.dart';
import 'package:shop/routers/app_routes.dart';
import 'package:get/route_manager.dart';

import '../pages/mime/index.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;
  static const INITIALLOGIN = AppRoutes.Login;

  static final routers = [
    GetPage(
      name: AppRoutes.Home,
      page: () => const PageIndex(),
    ),
    GetPage(name: AppRoutes.Login, page: () => const LoginIndex()),
    GetPage(
      name: AppRoutes.cart,
      page: () => const CartIndex(),
    ),
    GetPage(
      name: AppRoutes.goodsCate,
      page: () => const GoodsCateIndex(),
    ),
    GetPage(
      name: AppRoutes.mime,
      page: () => const MimeIndex(),
    ),
  ];
}
