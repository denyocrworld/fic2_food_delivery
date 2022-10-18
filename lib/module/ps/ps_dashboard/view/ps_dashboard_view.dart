import 'package:flutter/material.dart';
import '../controller/ps_dashboard_controller.dart';

class PsDashboardView extends StatefulWidget {
  const PsDashboardView({Key? key}) : super(key: key);

  Widget build(context, PsDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PsDashboard"),
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
  State<PsDashboardView> createState() => PsDashboardController();
}