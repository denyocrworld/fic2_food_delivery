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

  runApp(MaterialApp.router(
    title: 'Capek Ngoding',
    debugShowCheckedModeBanner: false,
    routerConfig: getRouters(),
  ));
}
