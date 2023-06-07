import 'package:flutter/material.dart';
import 'package:shop/middlewares/router_auth.dart';
import 'package:shop/pages/login/bindings.dart';
import 'package:shop/pages/login/view.dart';
import 'package:shop/pages/cart/view.dart';
import 'package:shop/pages/welcome/index.dart';
import 'package:shop/pages/goods_cate/index.dart';
import 'package:shop/pages/mime/index.dart';
import 'package:get/get.dart';

import 'package:shop/pages/home/index.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;
  static const INITIALLOGIN = AppRoutes.Login;
  static List<String> history = [];
  static final routers = [
    GetPage(
      name: AppRoutes.welcome,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.Home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.cart,
      page: () => CartIndex(),
    ),
    GetPage(
      name: AppRoutes.goodsCate,
      page: () => GoodsCateIndex(),
    ),
    GetPage(
      name: AppRoutes.mime,
      page: () => MimeView(),
      binding: MimeBinding(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),
  ];
}
