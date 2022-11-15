import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:example/core.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();
  if (!kIsWeb && !Platform.isWindows) await UserService.initialize();
  if (!kIsWeb && !Platform.isWindows) {
    await FirebaseNotification.initialize();
  }

  // return runApp(MaterialApp(
  //   title: 'Capek Ngoding',
  //   navigatorKey: Get.navigatorKey,
  //   debugShowCheckedModeBanner: false,
  //   theme: ThemeData.dark(),
  //   home: const TrView(),
  // ));

  runApp(MaterialApp.router(
    title: 'Capek Ngoding',
    debugShowCheckedModeBanner: false,
    routerConfig: getRouters(),
  ));
}
