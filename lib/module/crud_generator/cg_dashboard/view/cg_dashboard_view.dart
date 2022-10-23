import 'package:flutter/material.dart';
import '../controller/cg_dashboard_controller.dart';

class CgDashboardView extends StatefulWidget {
  const CgDashboardView({Key? key}) : super(key: key);

  Widget build(context, CgDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgDashboard"),
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
  State<CgDashboardView> createState() => CgDashboardController();
}