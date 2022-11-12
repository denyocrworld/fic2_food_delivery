import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/example_controller.dart';

class ExampleView extends StatefulWidget {
  const ExampleView({Key? key}) : super(key: key);

  Widget build(context, ExampleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Example"),
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
  State<ExampleView> createState() => ExampleController();
}