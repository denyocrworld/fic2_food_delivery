import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgPremadeProfileView extends StatefulWidget {
  const CgPremadeProfileView({Key? key}) : super(key: key);

  Widget build(context, CgPremadeProfileController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgPremadeProfile"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgPremadeProfileView> createState() => CgPremadeProfileController();
}
