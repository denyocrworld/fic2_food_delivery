import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elv7_controller.dart';

class Elv7View extends StatefulWidget {
  const Elv7View({Key? key}) : super(key: key);

  Widget build(context, Elv7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Elv7"),
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
  State<Elv7View> createState() => Elv7Controller();
}