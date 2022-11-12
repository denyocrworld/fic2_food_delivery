import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/widget_ui_controller.dart';

class WidgetUiView extends StatefulWidget {
  const WidgetUiView({Key? key}) : super(key: key);

  Widget build(context, WidgetUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("WidgetUi"),
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
  State<WidgetUiView> createState() => WidgetUiController();
}