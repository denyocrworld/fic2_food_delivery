import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/hyper_ui_controller.dart';

class HyperUiView extends StatefulWidget {
  const HyperUiView({Key? key}) : super(key: key);

  Widget build(context, HyperUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HyperUi"),
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
  State<HyperUiView> createState() => HyperUiController();
}