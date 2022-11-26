import 'package:example/core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/*
! Link Komunitas BERANDAL (GENERAL)
? https://tinyurl.com/join-berandal

! Link Komunitas FUGI (DART & FLUTTER)
? https://tinyurl.com/join-fugi

FIC (FREE)
Selasa, Rabu, dan Kamis
19:00 - 20:00
*/

void main() async {
  await initialize();
  // windows, android, ios
  var path = await getTemporaryDirectory();
  Hive.init(path.path);
  mainStorage = await Hive.openBox('mainStorage');

  await UserService.load();
  await ThemeService.load();
  await LocalProductService.load();
  await FormHistoryService.load();

  // print("mainStorage.isOpen: ${mainStorage.isOpen}");
  // print("storage: ${await mainStorage.get("token")}");
  // print("-----");
  // await mainStorage.put("mode", "JRocks");

  return runApp(MaterialApp(
    title: 'Capek Ngoding',
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
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
