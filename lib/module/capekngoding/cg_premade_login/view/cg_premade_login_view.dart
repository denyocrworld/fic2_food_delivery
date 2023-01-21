import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgPremadeLoginView extends StatefulWidget {
  const CgPremadeLoginView({Key? key}) : super(key: key);

  Widget build(context, CgPremadeLoginController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgPremadeLogin"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgPremadeLoginView> createState() => CgPremadeLoginController();
}
