import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/sc_task_controller.dart';

class ScTaskView extends StatefulWidget {
  const ScTaskView({Key? key}) : super(key: key);

  Widget build(context, ScTaskController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ScTask"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<ScTaskView> createState() => ScTaskController();
}