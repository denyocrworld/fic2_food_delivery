import 'package:example/core.dart';
import 'package:example/session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
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
}

runMainApp() async {
  return runApp(MaterialApp(
    title: 'Capek Ngoding',
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
    theme: getGojekTheme(),
    // home: const MainView(),
    // home: const FheMainNavigationView(),
    home: const GjLoginView(),
  ));
}
