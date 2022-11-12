import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/pos_another_example_controller.dart';

class PosAnotherExampleView extends StatefulWidget {
  const PosAnotherExampleView({Key? key}) : super(key: key);

  Widget build(context, PosAnotherExampleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PosAnotherExample"),
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
  State<PosAnotherExampleView> createState() => PosAnotherExampleController();
}