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
      title: 'shop',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routers,
      builder: EasyLoading.init(),
      translations: TranslationService(),
      navigatorObservers: [AppPages.observer],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: ConfigStore.to.languages,
      locale: ConfigStore.to.locale,
      fallbackLocale: const Locale('en', 'US'),
      enableLog: true,
      logWriterCallback: Logger.write,
    );
  }
}
