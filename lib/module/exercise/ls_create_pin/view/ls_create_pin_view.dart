import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_create_pin_controller.dart';

class LsCreatePinView extends StatefulWidget {
  const LsCreatePinView({Key? key}) : super(key: key);

  Widget build(context, LsCreatePinController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsCreatePin"),
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
  State<LsCreatePinView> createState() => LsCreatePinController();
}