import 'package:flutter/material.dart';
import '../controller/hris_hr_dashboard_controller.dart';

class HrisHrDashboardView extends StatefulWidget {
  const HrisHrDashboardView({Key? key}) : super(key: key);

  Widget build(context, HrisHrDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrisHrDashboard"),
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
  State<HrisHrDashboardView> createState() => HrisHrDashboardController();
}