import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgPremadeDashboardView extends StatefulWidget {
  const CgPremadeDashboardView({Key? key}) : super(key: key);

  Widget build(context, CgPremadeDashboardController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgPremadeDashboard"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgPremadeDashboardView> createState() => CgPremadeDashboardController();
}
