import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/tab_ui_controller.dart';

class TabUiView extends StatefulWidget {
  const TabUiView({Key? key}) : super(key: key);

  Widget build(context, TabUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TabUi"),
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
  State<TabUiView> createState() => TabUiController();
}