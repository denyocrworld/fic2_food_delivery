import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgHyperuiUtilityView extends StatefulWidget {
  const CgHyperuiUtilityView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiUtilityController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiUtility"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgHyperuiUtilityView> createState() => CgHyperuiUtilityController();
}
