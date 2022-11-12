import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/navigation_ui_controller.dart';

class NavigationUiView extends StatefulWidget {
  const NavigationUiView({Key? key}) : super(key: key);

  Widget build(context, NavigationUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("NavigationUi"),
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
  State<NavigationUiView> createState() => NavigationUiController();
}