import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_chart_controller.dart';

class HrChartView extends StatefulWidget {
  const HrChartView({Key? key}) : super(key: key);

  Widget build(context, HrChartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrChart"),
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
  State<HrChartView> createState() => HrChartController();
}