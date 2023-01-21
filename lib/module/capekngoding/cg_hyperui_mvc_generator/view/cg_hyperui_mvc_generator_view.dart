import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgHyperuiMvcGeneratorView extends StatefulWidget {
  const CgHyperuiMvcGeneratorView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiMvcGeneratorController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiMvcGenerator"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgHyperuiMvcGeneratorView> createState() =>
      CgHyperuiMvcGeneratorController();
}
