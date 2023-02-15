import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_premade_dashboard_controller.dart';

class CgPremadeDashboardView extends StatefulWidget {
  const CgPremadeDashboardView({Key? key}) : super(key: key);

  Widget build(context, CgPremadeDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgPremadeDashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<CgPremadeDashboardView> createState() => CgPremadeDashboardController();
}
