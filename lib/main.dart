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

  runApp(const ShellRouteExampleApp());
}

class ShellRouteExampleApp extends StatelessWidget {
  const ShellRouteExampleApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ThemeEditor.build(
      builder: (theme) {
        return MaterialApp.router(
          title: 'Capek Ngoding',
          debugShowCheckedModeBanner: false,
          theme: theme,
          routerConfig: getRouters(),
        );
      },
    );
  }
}
