import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/theme_controller.dart';

class ThemeView extends StatefulWidget {
  const ThemeView({Key? key}) : super(key: key);

  Widget build(context, ThemeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme"),
        actions: const [],
      ),
      body: ListView(
        children: const [
          //body
        ],
      ),
    );
  }

  @override
  State<ThemeView> createState() => ThemeController();
}