import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:shop/routers/app_pages.dart';
import 'package:shop/common/langs/translation_service.dart';
import 'package:shop/routers/routes.dart';
import 'package:shop/store/store.dart';
import 'package:shop/common/style/style.dart';
import 'package:shop/utils/utils.dart';
import 'package:shop/global.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'shop', //应用标题
      theme: AppTheme.light, //应用主题，包括颜色、字体等
      debugShowCheckedModeBanner: false, //是否显示debug标志
      initialRoute: AppPages.INITIAL, //应用启动时的初始路由
      getPages: AppPages.routers, //路由表，用来配置应用的路由信息
      builder: EasyLoading.init(),
      translations: TranslationService(), //配置显示国际化内容
      locale: ConfigStore.to.locale, //默认展示本地语言
      fallbackLocale: const Locale('en', 'US'), //语言选择无效时，备用语言
      localizationsDelegates: const [
        //应用程序的本地化委托列表，用于提供应用程序的本地化字符串
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: ConfigStore.to.languages,
      enableLog: true, //定义是否启用 GetX 的日志记录
      logWriterCallback: Logger.write, //定义自定义的日志记录器回调函数
    );
  }
}
