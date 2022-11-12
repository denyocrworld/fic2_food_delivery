import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/chip_ui_controller.dart';

class ChipUiView extends StatefulWidget {
  const ChipUiView({Key? key}) : super(key: key);

  Widget build(context, ChipUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ChipUi"),
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
  State<ChipUiView> createState() => ChipUiController();
}