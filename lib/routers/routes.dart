import 'package:shop/pages/index.dart';
import 'package:shop/pages/login.dart';
import 'package:shop/pages/goods_cate/index.dart';
import 'package:flutter/material.dart';

final Map<String, Function> routes = {};

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
