import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/mvc_dashboard_controller.dart';

class MvcDashboardView extends StatefulWidget {
  const MvcDashboardView({Key? key}) : super(key: key);

  Widget build(context, MvcDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MvcDashboard"),
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
  State<MvcDashboardView> createState() => MvcDashboardController();
}