import 'package:example/core.dart';
import 'package:example/session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/*
Nama: Deniansyah
NamaProgrammer: DenyOcr
2011

Freelancer
2011 - 2022 (11 tahun)

Ngantor
3,5 Tahun

ElectronRx
Cambridge, 
2-12

Python
PHP
C#
Java
Bot
Macro

*/
void main() async {
  await initialize();
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
    // theme: getGojekTheme(),
    theme: ThemeData.dark(),
    // home: const FheMainNavigationView(),
    // home: const ExProductListView(),
    home: const ContohView(),
  ));
}
