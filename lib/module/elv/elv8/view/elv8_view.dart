import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elv8_controller.dart';

class Elv8View extends StatefulWidget {
  const Elv8View({Key? key}) : super(key: key);

  Widget build(context, Elv8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Elv8"),
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
  State<Elv8View> createState() => Elv8Controller();
}