import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgIconView extends StatefulWidget {
  const CgIconView({Key? key}) : super(key: key);

  Widget build(context, CgIconController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgIcon"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgIconView> createState() => CgIconController();
}
