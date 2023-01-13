import 'package:hyper_ui/state_util.dart';
import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

/*

HTTP
- Ecommerce

WebSocket
- Aplikasi Chat
- Game Online Multiplayer

Front End
- PHP, Golang, NodeJS, Python

Dokumentasi API
- Postman / Insomia / ThunderClient
- Website

------------------

1. Bikin UI
2. Consume API
---
3. Testing

*/

void main() async {
  await initialize();
  Get.mainTheme.value = getDefaultTheme();
  // Get.mainTheme.value = getDarkTheme();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

/*
! LINK KOMUNITAS
? https://tinyurl.com/join-berandal << INI

Rules Baru
- Promosi hal yang sama, hanya boleh 1x sehari
- Dilarang spam

Tidak ada toleransi, untuk kenyamanan bersama.
Grup ini bebas utk promosi apapun,
Tapi tidak ada toleransi untuk spammer..
Untuk kenyamanan bersama..

Pinalty
- Di kick dari grup, dan boleh join kembali setelah 21 hari (Silahkan hubungi Admin jika kamu terkena kick karena melanggar Rules)
- Disetrum belut listrik, dan dipaksa makan nasi 10 piring + dikasih lihat foto mantan yang nikah sama cowok lain selama 7x24 jam.
*/

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Capek Ngoding',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const CgMainView(),
          // home: const ContohView(),
          // home: const TutorialView(),
          builder: (context, child) {
            if (child == null) {
              return Container();
            }
            return Material(
              child: Stack(
                children: [
                  child,
                  const Positioned(
                    right: 10,
                    bottom: 10,
                    child: ThemeChangerIcon(),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
