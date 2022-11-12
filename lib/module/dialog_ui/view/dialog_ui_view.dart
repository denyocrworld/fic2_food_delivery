import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/dialog_ui_controller.dart';

class DialogUiView extends StatefulWidget {
  const DialogUiView({Key? key}) : super(key: key);

  Widget build(context, DialogUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DialogUi"),
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
  State<DialogUiView> createState() => DialogUiController();
}