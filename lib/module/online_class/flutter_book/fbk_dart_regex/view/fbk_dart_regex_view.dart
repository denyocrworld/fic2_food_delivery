import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_dart_regex_controller.dart';

class FbkDartRegexView extends StatefulWidget {
  const FbkDartRegexView({Key? key}) : super(key: key);

  Widget build(context, FbkDartRegexController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartRegex"),
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
  State<FbkDartRegexView> createState() => FbkDartRegexController();
}