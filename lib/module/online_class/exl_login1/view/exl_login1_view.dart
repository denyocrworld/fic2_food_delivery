import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/exl_login1_controller.dart';

class ExlLogin1View extends StatefulWidget {
  const ExlLogin1View({Key? key}) : super(key: key);

  Widget build(context, ExlLogin1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ExlLogin1"),
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
  State<ExlLogin1View> createState() => ExlLogin1Controller();
}