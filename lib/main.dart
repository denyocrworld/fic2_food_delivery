import 'package:example/_/template_card/view/template_card_view.dart';
import 'package:example/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/*
TODO: ADA DI BIO
! Link Youtube
? https://youtube.com/@capekngoding

! Link Komunitas BERANDAL (UMUM)
? https://tinyurl.com/join-berandal

! Link Komunitas DART & FLUTTER
? https://tinyurl.com/join-fugi

*/

void main() async {
  await initialize();
  if (!kIsWeb) {
    // if (Platform.isWindows) {
    //   var path = Directory.current.path;
    //   Hive.init(path);
    //   mainStorage = await Hive.openLazyBox('mainStorage');
    // } else if (Platform.isAndroid) {
    //   var path = await getTemporaryDirectory();
    //   Hive.init(path.path);
    //   mainStorage = await Hive.openLazyBox('mainStorage');
    // }
    var path = await getTemporaryDirectory();
    Hive.init(path.path);
    mainStorage = await Hive.openBox('mainStorage');

    print("mainStorage.isOpen: ${mainStorage.isOpen}");
    print("storage: ${await mainStorage.get("mode")}");
    print("-----");

    await mainStorage.put("mode", "JRocks");
    await DBService().load();
  }

  return runApp(MaterialApp(
    title: 'Capek Ngoding',
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: const TemplateCardView(),
    // home: const AckTutorialCartView(),
    // home: const TrView(),
    // home: const UiDailiyTodoListView(),
    // home: const LifeCycleDemoView(),
  ));

  runApp(MaterialApp.router(
    title: 'Capek Ngoding',
    debugShowCheckedModeBanner: false,
    routerConfig: getRouters(),
  ));
}
