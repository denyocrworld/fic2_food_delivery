import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgTextView extends StatefulWidget {
  const CgTextView({Key? key}) : super(key: key);

  Widget build(context, CgTextController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgText"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgTextView> createState() => CgTextController();
}
