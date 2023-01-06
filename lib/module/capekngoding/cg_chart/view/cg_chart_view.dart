import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_chart_controller.dart';

class CgChartView extends StatefulWidget {
  const CgChartView({Key? key}) : super(key: key);

  Widget build(context, CgChartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgChart"),
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
  State<CgChartView> createState() => CgChartController();
}
