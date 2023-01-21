import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgHyperuiFireStreamView extends StatefulWidget {
  const CgHyperuiFireStreamView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiFireStreamController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiFireStream"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgHyperuiFireStreamView> createState() =>
      CgHyperuiFireStreamController();
}
