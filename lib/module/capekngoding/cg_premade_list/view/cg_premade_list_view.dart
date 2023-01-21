import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgPremadeListView extends StatefulWidget {
  const CgPremadeListView({Key? key}) : super(key: key);

  Widget build(context, CgPremadeListController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgPremadeList"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgPremadeListView> createState() => CgPremadeListController();
}
