import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_dart_number_controller.dart';

class FbkDartNumberView extends StatefulWidget {
  const FbkDartNumberView({Key? key}) : super(key: key);

  Widget build(context, FbkDartNumberController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartNumber"),
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
  State<FbkDartNumberView> createState() => FbkDartNumberController();
}