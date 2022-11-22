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
//-----------------------------
! Link Komunitas FUGI (KHUSUS DART & FLUTTER)
? https://tinyurl.com/join-fugi
*/

// MATERI HARI INI:
// ! HTTP Request dengan Flutter
// - Login
// - CRUD Product
// - Product List
// - Create Product
// - Update Product
// - Delete Product

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
    home: const TrView(),
    // home: const LifeCycleDemoView(),
  ));

  runApp(MaterialApp.router(
    title: 'Capek Ngoding',
    debugShowCheckedModeBanner: false,
    routerConfig: getRouters(),
  ));
}
