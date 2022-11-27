import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_pos_controller.dart';

class LsPosView extends StatefulWidget {
  const LsPosView({Key? key}) : super(key: key);

  Widget build(context, LsPosController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsPos"),
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
  State<LsPosView> createState() => LsPosController();
}