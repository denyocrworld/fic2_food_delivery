import 'package:example/core.dart';
import 'package:example/session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/*
LINK KOMUNITAS
! https://tinyurl.com/join-berandal

GAJI PROGRAMMER = TERGANTUNG DAERAH-NYA
JUNIOR~

- HARUS PUNYA PORTOFOLIO
FRONTEND
- Perbanyak Clone UI Aplikasi yang Populer (TOKOPEDIA, GOJEK, GRAB) 
    (REACT, FLUTTER, HTML, JAVA)
    (1-3 halaman per aplikasi)
    (Minimal 5 Aplikasi lah)
- Perbanyak Clone UI dari DRIBBLE
    (Minimal 5 Aplikasi, 1-3 halaman per aplikasi)
  (10 Portofolio)
- Bikin CV yang ATS FRIENDLY
- Bikin Portofolio (PDF), yang berisi screenshot aplikasi temen2 
  (Gambar, Link GitHUB, Link DEMO-nya (opsional), Link VIDEO)
- SUBMIT CV SEbanyak Mungkin
- (100,200,300 , ~ 1000 Submission)

- Jangan cari perusahaan2 yang udah gede
- Cari STARTUP BARU


DI DAERAH
3-8

JAKARTA
8-15 

BATAM
8-20w

SINGAPUR
15-25

US/UK
25-45




*/
void main() async {
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