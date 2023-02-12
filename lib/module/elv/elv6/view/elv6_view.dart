import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elv6_controller.dart';

class Elv6View extends StatefulWidget {
  const Elv6View({Key? key}) : super(key: key);

  Widget build(context, Elv6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Elv6"),
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
  State<Elv6View> createState() => Elv6Controller();
}