import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/temp_dashboard_controller.dart';

class TempDashboardView extends StatefulWidget {
  const TempDashboardView({Key? key}) : super(key: key);

  Widget build(context, TempDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TempDashboard"),
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
  State<TempDashboardView> createState() => TempDashboardController();
}