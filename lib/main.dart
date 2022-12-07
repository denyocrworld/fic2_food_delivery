import 'package:example/core.dart';
import 'package:example/session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/*
LINK KOMUNITAS
! https://tinyurl.com/join-berandal

KENAPA GW SUKA FLUTTER
1. NGODING UI DI FLUTTER ITU GAMPANG
2. PERFORMA APLIKASI KENCENG/NGEBUT
3. KOMUNITAS-NYA OK

- BELAJAR BASIC
- PERBANYAK LATIHAN
- KURANGI MEMBACA, DAN PERBANYAK LATIHAN
- KEJAR JAM KODING 100 JAM, 1000 JAM, lalu 10.000 JAM

PEMULA
- PYTHON, DART, JS, JAVA

BASIC PROGRAMMING
- Variabel
- IF Statement
- Array/List
- Map
- Looping
- Function
- OOP

WAIT~
IDE | (CODE EDITOR): VSCODE
BAHASA: DART
FRAMEWORK: FLUTTER
PLATFORM:
ANDROID, IOS, DESKTOP, WEB
MACOS, WINDOWS, LINUX
BACKEND: BEBAS (PHP, GOLANG, NODEJS)

FRONTEND
- UI
- Logic dari UI
- Consume API

BACKEND
FULLSTACK
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

  // print("mainStorage.isOpen: ${mainStorage.isOpen}");
  // print("storage: ${await mainStorage.get("token")}");
  // print("-----");
  // await mainStorage.put("mode", "JRocks");

  return runApp(MaterialApp(
    title: 'Capek Ngoding',
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
    // theme: getDefaultTheme(),
    // home: const TrExampleView(),
    theme: ThemeData.dark(),
    // home: const TemplateCardView(),
    // home: const AckTutorialCartView(),
    // home: const TrBasicWidgetView(),
    home: const TrView(),
    // home: const UiDailiyTodoListView(),
    // home: const LifeCycleDemoView(),
  ));

  runApp(MaterialApp.router(
    title: 'Capek Ngoding',
    debugShowCheckedModeBanner: false,
    routerConfig: getRouters(),
  ));
}


/*
CRUD Generator
data-nya bisa di custom secara realtime.
Bisa ditentukan jenis textfield-nya:
- textfield
- numberfield
- photo
- memofield
*/