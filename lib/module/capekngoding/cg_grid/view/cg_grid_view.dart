import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgGridView extends StatefulWidget {
  const CgGridView({Key? key}) : super(key: key);

  Widget build(context, CgGridController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgGrid"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgGridView> createState() => CgGridController();
}
