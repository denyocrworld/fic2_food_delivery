import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/pos_example_controller.dart';

class PosExampleView extends StatefulWidget {
  const PosExampleView({Key? key}) : super(key: key);

  Widget build(context, PosExampleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PosExample"),
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
  State<PosExampleView> createState() => PosExampleController();
}