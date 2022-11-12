import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/scaffold_ui_controller.dart';

class ScaffoldUiView extends StatefulWidget {
  const ScaffoldUiView({Key? key}) : super(key: key);

  Widget build(context, ScaffoldUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ScaffoldUi"),
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
  State<ScaffoldUiView> createState() => ScaffoldUiController();
}