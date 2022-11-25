import 'package:example/core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/*
! LINK GMEET
? https://tinyurl.com/GMEET-NOW

! Link Komunitas (GENERAL)
? https://tinyurl.com/join-berandal

! Link Komunitas DART & FLUTTER
? https://tinyurl.com/join-fugi

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
    home: const TrBasicWidgetView(),
    // home: const UiDailiyTodoListView(),
    // home: const LifeCycleDemoView(),
  ));

  runApp(MaterialApp.router(
    title: 'Capek Ngoding',
    debugShowCheckedModeBanner: false,
    routerConfig: getRouters(),
  ));
}
