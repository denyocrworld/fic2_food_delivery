import 'dart:io';

import 'package:example/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

/*
TODO: ADA DI BIO

! Link Youtube
? https://youtube.com/@capekngoding

! Link Komunitas BERANDAL (UMUM)
? https://tinyurl.com/join-berandal


- BASIC DART
- COMMON WIDGET di FLUTTER
  (CONTAINER, IMAGE, ICON, TEXT, dsb)
- LAYOUT
  (COLUMN, ROW, WRAP, STACK)
- LIST
  (LISTVIEW,GRIDVIEW)
- NAVIGASI
- STATE MANAGEMENT
*/

void main() async {
  await initialize();
  if (!kIsWeb && Platform.isWindows) {
    var path = Directory.current.path;
    Hive.init(path);
    mainStorage = await Hive.openLazyBox('mainStorage');

    print("mainStorage.isOpen: ${mainStorage.isOpen}");
    print("-----");
    await DBService().load();
  }
  return runApp(MaterialApp(
    title: 'Capek Ngoding',
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: const UiDailiyTodoListView(),
    // home: const LifeCycleDemoView(),
  ));

  runApp(MaterialApp.router(
    title: 'Capek Ngoding',
    debugShowCheckedModeBanner: false,
    routerConfig: getRouters(),
  ));
}
