import 'package:flutter/material.dart';
import '../controller/hris_employee_dashboard_controller.dart';

class HrisEmployeeDashboardView extends StatefulWidget {
  const HrisEmployeeDashboardView({Key? key}) : super(key: key);

  Widget build(context, HrisEmployeeDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrisEmployeeDashboard"),
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
  State<HrisEmployeeDashboardView> createState() => HrisEmployeeDashboardController();
}