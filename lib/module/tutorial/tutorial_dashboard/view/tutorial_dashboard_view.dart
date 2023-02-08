import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/tutorial_dashboard_controller.dart';

class TutorialDashboardView extends StatefulWidget {
  const TutorialDashboardView({Key? key}) : super(key: key);

  Widget build(context, TutorialDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TutorialDashboard"),
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
  State<TutorialDashboardView> createState() => TutorialDashboardController();
}