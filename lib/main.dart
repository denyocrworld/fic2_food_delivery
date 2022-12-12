import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:example/core.dart';
import 'package:example/session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/*
LINK KOMUNITAS
! https://tinyurl.com/join-berandal

Kelas Online Dart/Flutter (8x Pertemuan)
! https://capekngoding.com
*/

/*
State Management
- Provider
- Mobx
- Getx

- Riverpod
- Bloc
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

  await UserService.load();
  await ThemeService.load();
  await LocalProductService.load();
  await FormHistoryService.load();
  AppSession.token = await mainStorage.get("token") ?? "";

  runMainApp();
  customizeInDesktopVersion();

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
    theme: ThemeData.dark(),
    // home: const TrExampleView(),
    // home: const TemplateCardView(),
    // home: const AckTutorialCartView(),
    // home: const TrBasicWidgetView(),
    home: const TrExampleView(),
    // home: const DevDocsView(),
    // home: const TrExampleView(),
    // home: const UiDailiyTodoListView(),
    // home: const LifeCycleDemoView(),
  ));
}

customizeInDesktopVersion() async {
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    // await Future.delayed(const Duration(milliseconds: 600));
    doWhenWindowReady(() {
      const initialSize = Size(360, 660);
      appWindow.minSize = initialSize;
      appWindow.size = initialSize;
      appWindow.alignment = Alignment.topRight;
      appWindow.show();
    });
  }
}
