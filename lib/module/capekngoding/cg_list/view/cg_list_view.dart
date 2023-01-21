import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgListView extends StatefulWidget {
  const CgListView({Key? key}) : super(key: key);

  Widget build(context, CgListController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgList"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgListView> createState() => CgListController();
}
