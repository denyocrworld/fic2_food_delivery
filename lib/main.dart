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

TODO: Jangan pernah bikin aplikasi tanpa architecture
- Akan susah di maintain
- Pada akhirnya akan berexperiment yang nggak perlu
- Kode-nya jadi gak clean

MVC
MVP
MVVM
BLoc Architecutre
Riverpod Architecutre
Clean Architecture

Flutter
masih bergantung sama Native

Produktivitas utk BKin UI
- Flutter lebih ok daripada Native

---

RAM: 8GB-16GB
Hardisk: SSD
Processor: 10 tahun terakhir
AMD RYZEN 3, AMD RYZEN 5
i3, i5, i7
---
+HARUS ADA PORTOFOLIO
---
Front END
- Clone UI dari Aplikasi2 Populer
> Tokopedia, Grab, OVO, Gojek, NOice, Tikok
(3-5 halaman)
(React, Flutter, bebas)
- Clone 5 UI yang ada di Dribble

(10 Portofolio)
---

- BASIC DART
- MVC + State Management

JUNIOR
Daerah
4-8jt

Jakarta
8-15jt

Batam
8-20jt

Singapur
15-35++

UK/US
25-45++


setState
provider
mobx
getx

bloc
riverpod
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
    // home: const TrExampleView(),
    // home: const CounterAppView(),
    home: const MvcCounterView(),
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
      appWindow.alignment = Alignment.topLeft;
      appWindow.show();
    });
  }
}
