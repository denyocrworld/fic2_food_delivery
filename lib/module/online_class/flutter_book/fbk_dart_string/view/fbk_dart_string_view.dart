import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_dart_string_controller.dart';

class FbkDartStringView extends StatefulWidget {
  const FbkDartStringView({Key? key}) : super(key: key);

  Widget build(context, FbkDartStringController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartString"),
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
  State<FbkDartStringView> createState() => FbkDartStringController();
}