import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_text_controller.dart';

class CgTextView extends StatefulWidget {
  const CgTextView({Key? key}) : super(key: key);

  Widget build(context, CgTextController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgText"),
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
  State<CgTextView> createState() => CgTextController();
}
