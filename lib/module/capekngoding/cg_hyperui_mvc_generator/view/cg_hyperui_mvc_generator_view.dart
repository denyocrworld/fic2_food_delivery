import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/cg_hyperui_mvc_generator_controller.dart';

class CgHyperuiMvcGeneratorView extends StatefulWidget {
  const CgHyperuiMvcGeneratorView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiMvcGeneratorController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiMvcGenerator"),
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
  State<CgHyperuiMvcGeneratorView> createState() => CgHyperuiMvcGeneratorController();
}