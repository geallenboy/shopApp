import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shop/routers/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,

      ///国际化 自定义配置 目前配置了 英语和中文
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [Locale("en", "US"), Locale("zh", "CN")],

      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routers,
      routingCallback: (routing) {
        if (routing?.current != "/login" &&
            routing?.current != "/login/webView") {}
        if (routing?.current == "/home") {}
      },
    );
  }
}
