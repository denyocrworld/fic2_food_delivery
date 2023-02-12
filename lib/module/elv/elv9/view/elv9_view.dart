import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elv9_controller.dart';

class Elv9View extends StatefulWidget {
  const Elv9View({Key? key}) : super(key: key);

  Widget build(context, Elv9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Elv9"),
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
  State<Elv9View> createState() => Elv9Controller();
}