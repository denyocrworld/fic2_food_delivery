import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgTableView extends StatefulWidget {
  const CgTableView({Key? key}) : super(key: key);

  Widget build(context, CgTableController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgTable"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgTableView> createState() => CgTableController();
}
