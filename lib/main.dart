import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:example/core.dart';
import 'package:flutter/material.dart';

// JOIN GMEET
// https://tinyurl.com/deny-gmeet

void main() async {
  await initialize();
  if (!kIsWeb && !Platform.isWindows) await UserService.initialize();
  if (!kIsWeb && !Platform.isWindows) {
    await FirebaseNotification.initialize();
  }

  return runApp(MaterialApp(
    title: 'Capek Ngoding',
<<<<<<< HEAD
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
    theme: getDarkTheme(),
    home: const TestxxxView(),
=======
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      // scaffoldBackgroundColor: Colors.brown[200],
      // appBarTheme: const AppBarTheme(
      //   backgroundColor: Colors.purple,
      // ),
      cardTheme: CardTheme(
        elevation: 10,
        // color: Colors.green[100],
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(64.0),
        ),
      ),
    ),
    home: const ProfileUiView(),
    // home: const FormUiView(),
>>>>>>> 015bfb1b552214b52fa2681be302ab39fdaa5575
  ));

  runApp(MaterialApp.router(
    title: 'Capek Ngoding',
    debugShowCheckedModeBanner: false,
    routerConfig: getRouters(),
  ));
}
