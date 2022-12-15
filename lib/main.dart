import 'package:example/core.dart';
import 'package:example/session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/*
LINK KOMUNITAS
! https://tinyurl.com/join-berandal

Kelas Online Dart/Flutter
! https://capekngoding.com

- Game
- Data Scientist

- Tokopedia, Grab, OVO, Dana, Tiktok

! KURANGI MEMBACA
! PERBANYAK LATIHAN

TODO: YOUTUBE
TODO: CAPEK NGODING


Live Tiktok 
(Seminggu 3x)
Pagi, jam 7-8/9

*/
void main() async {
  Map product = {
    //key, value
    "product_name": "GG FILTER",
    "price": 25,
  };

  await initialize();
  // windows, android, ios
  if (!kIsWeb) {
    var path = await getTemporaryDirectory();
    Hive.init(path.path);
  }
  mainStorage = await Hive.openBox('mainStorage');
  await ObsStorage.initializeObsStorage();

  await UserService.load();
  await ThemeService.load();
  await LocalProductService.load();
  await FormHistoryService.load();
  AppSession.token = await mainStorage.get("token") ?? "";

  runMainApp();
  // customizeInDesktopVersion();

  // runApp(MaterialApp.router(
  //   title: 'Capek Ngoding',
  //   debugShowCheckedModeBanner: false,
  //   routerConfig: getRouters(),
  // ));
}

runMainApp() async {
  return runApp(MaterialApp(
    title: 'Capek Ngoding',
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
    // theme: getDefaultTheme(),
    theme: getGrabInspiredTheme(),
    // home: const TrExampleView(),
    // home: const TemplateCardView(),
    // home: const AckTutorialCartView(),
    // home: const TrBasicWidgetView(),
    // home: const TrExampleView(),
    // home: const CounterAppView(),
    // home: const MvcCounterView(),
    // home: const DevDocsView(),
    home: const TrView(),
    // home: const MaLoginView(),
    // home: const GjDashboardView(),
    // home: const UiDailiyTodoListView(),
    // home: const LifeCycleDemoView(),
  ));
}

customizeInDesktopVersion() async {
  // if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
  //   // await Future.delayed(const Duration(milliseconds: 600));
  //   await Future.delayed(const Duration(seconds: 1));
  //   doWhenWindowReady(() {
  //     const initialSize = Size(360, 660);
  //     appWindow.minSize = initialSize;
  //     appWindow.size = initialSize;
  //     appWindow.alignment = Alignment.topRight;
  //     appWindow.show();
  //   });
  // }
}
