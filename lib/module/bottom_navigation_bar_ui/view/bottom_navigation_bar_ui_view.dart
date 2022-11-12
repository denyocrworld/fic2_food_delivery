import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/bottom_navigation_bar_ui_controller.dart';

class BottomNavigationBarUiView extends StatefulWidget {
  const BottomNavigationBarUiView({Key? key}) : super(key: key);

  Widget build(context, BottomNavigationBarUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBarUi"),
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
  State<BottomNavigationBarUiView> createState() => BottomNavigationBarUiController();
}