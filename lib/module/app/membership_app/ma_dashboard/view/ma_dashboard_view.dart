import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ma_dashboard_controller.dart';

class MaDashboardView extends StatefulWidget {
  const MaDashboardView({Key? key}) : super(key: key);

  Widget build(context, MaDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MaDashboard"),
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
  State<MaDashboardView> createState() => MaDashboardController();
}