import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/appbar_ui_controller.dart';

class AppbarUiView extends StatefulWidget {
  const AppbarUiView({Key? key}) : super(key: key);

  Widget build(context, AppbarUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AppbarUi"),
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
  State<AppbarUiView> createState() => AppbarUiController();
}