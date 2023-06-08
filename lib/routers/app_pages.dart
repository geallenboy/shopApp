import 'package:flutter/material.dart';
import 'package:shop/middlewares/router_auth.dart';
import 'package:shop/pages/login/bindings.dart';
import 'package:shop/pages/login/view.dart';
import 'package:shop/pages/cart/index.dart';
import 'package:shop/pages/welcome/index.dart';
import 'package:shop/pages/goods_cate/index.dart';
import 'package:shop/pages/mine/index.dart';
import 'package:get/get.dart';

import 'package:shop/pages/home/index.dart';
import '../pages/index/index.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.bottomNavigaton;
  static const INITIALLOGIN = AppRoutes.Login;
  static List<String> history = [];
  static final routers = [
    GetPage(
      name: AppRoutes.bottomNavigaton,
      page: () => IndexView(),
      binding: IndexBinding(),
    ),
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
      page: () => CartView(),
    ),
    GetPage(
      name: AppRoutes.goodsCate,
      page: () => GoodsCateView(),
    ),
    GetPage(
      name: AppRoutes.mime,
      page: () => MimeView(),
      binding: MineBinding(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),
  ];
}
