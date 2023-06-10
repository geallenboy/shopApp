import 'package:flutter/material.dart';
import 'package:shop/pages/login/bindings.dart';
import 'package:shop/pages/login/view.dart';
import 'package:shop/pages/cart/index.dart';
import 'package:shop/pages/welcome/index.dart';
import 'package:shop/pages/goods_cate/index.dart';
import 'package:shop/pages/mine/index.dart';
import 'package:get/get.dart';

import 'package:shop/pages/home/index.dart';
import 'package:shop/middlewares/middlewares.dart';
import 'package:shop/pages/index/index.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.welcome;
  static const INITIALLOGIN = AppRoutes.login;
  static List<String> history = [];
  static final routers = [
    GetPage(
      name: AppRoutes.index,
      page: () => const IndexView(),
      binding: IndexBinding(),
      middlewares: [
        RouteWelcomeMiddleware(priority: 1),
      ],
    ),
    GetPage(
      name: AppRoutes.welcome,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.cart,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: AppRoutes.goodsCate,
      page: () => const GoodsCateView(),
      binding: GoodsCateBinding(),
    ),
    GetPage(
      name: AppRoutes.mime,
      page: () => const MimeView(),
      binding: MineBinding(),
      middlewares: [
        RouteAuthMiddleware(priority: 0),
      ],
    ),
  ];
}
