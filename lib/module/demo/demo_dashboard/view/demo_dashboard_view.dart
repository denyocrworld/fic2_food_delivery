import 'package:flutter/material.dart';
import '../controller/demo_dashboard_controller.dart';

class DemoDashboardView extends StatefulWidget {
  const DemoDashboardView({Key? key}) : super(key: key);

  Widget build(context, DemoDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DemoDashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DemoDashboardView> createState() => DemoDashboardController();
}