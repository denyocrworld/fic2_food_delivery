import 'dart:io';

import 'package:example/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

/*
TODO: ADA DI BIO
! Link Komunitas BERANDAL (UMUM)
? https://tinyurl.com/join-berandal
//-----------------------------
! Link Komunitas FUGI (KHUSUS DART & FLUTTER)
? https://tinyurl.com/join-fugi
? FIC
? Selasa, Rabu dan Kamis di GMEET
? 19:00 - 20:00
*/

// MATERI HARI INI:
// FLUTTER - STATE MANAGEMENT
// 20:00 - 21:00
// ! LINK GMEET:
// ! https://tinyurl.com/gmeet-fic

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
