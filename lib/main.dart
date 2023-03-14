import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_base_template/app/base/networking/_index.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/router/app_pages.dart';
import 'app/ui/widgets/_index.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  setPathUrlStrategy();
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
      scrollBehavior: MyBehavior(),
      debugShowCheckedModeBanner: false,
      title: "Base",
      initialRoute: Pages.MAIN,
      getPages: Pages.routes,
      builder: ((context, child) {
        final mediaQueryData = MediaQuery.of(context);
        final scale = mediaQueryData.textScaleFactor.clamp(0.8, 0.9);
        return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: scale), child: child!);
      }),
      // navigatorObservers: [AnalyticsService().getAnalyticsObserver()],
    ),
  );
}

Future<void> _injectDependency() async {
  // Services di inject saat dibutuhkan saja .
  Get.lazyPut<HttpService>(() => HttpService());

  // Repo
}
