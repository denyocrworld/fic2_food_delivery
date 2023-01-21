import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgPremadeReportView extends StatefulWidget {
  const CgPremadeReportView({Key? key}) : super(key: key);

  Widget build(context, CgPremadeReportController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgPremadeReport"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgPremadeReportView> createState() => CgPremadeReportController();
}
