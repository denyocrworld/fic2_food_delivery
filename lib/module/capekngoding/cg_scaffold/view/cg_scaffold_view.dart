import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgScaffoldView extends StatefulWidget {
  const CgScaffoldView({Key? key}) : super(key: key);

  Widget build(context, CgScaffoldController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgScaffold"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgScaffoldView> createState() => CgScaffoldController();
}
