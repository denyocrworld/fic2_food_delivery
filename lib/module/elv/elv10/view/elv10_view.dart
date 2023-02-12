import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elv10_controller.dart';

class Elv10View extends StatefulWidget {
  const Elv10View({Key? key}) : super(key: key);

  Widget build(context, Elv10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Elv10"),
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
  State<Elv10View> createState() => Elv10Controller();
}