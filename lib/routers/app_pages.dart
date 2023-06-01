import 'package:flutter/material.dart';
import 'package:shop/middlewares/router_auth.dart';
import 'package:shop/pages/index.dart';
import 'package:shop/pages/login/view.dart';
import 'package:shop/pages/cart/view.dart';
import 'package:shop/pages/welcome/index.dart';
import 'package:shop/pages/goods_cate/index.dart';
import 'package:shop/pages/mime/index.dart';
import 'package:get/get.dart';
import '../middlewares/router_welcome.dart';
import '../pages/home/index.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;
  static const INITIALLOGIN = AppRoutes.Login;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];
  static final routers = [
    GetPage(
      name: AppRoutes.welcome,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
      middlewares: [
        RouteWelcomeMiddleware(priority: 1),
      ],
    ),
    GetPage(
      name: AppRoutes.Home,
      binding: HomeBinding(),
      page: () => const PageIndex(),
    ),
    GetPage(name: AppRoutes.Login, page: () => LoginView()),
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
      page: () => MimeIndex(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),
  ];
}
