import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgLayoutView extends StatefulWidget {
  const CgLayoutView({Key? key}) : super(key: key);

  Widget build(context, CgLayoutController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgLayout"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgLayoutView> createState() => CgLayoutController();
}
