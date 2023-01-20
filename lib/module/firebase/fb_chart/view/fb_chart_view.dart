import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_chart_controller.dart';

class FbChartView extends StatefulWidget {
  const FbChartView({Key? key}) : super(key: key);

  Widget build(context, FbChartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbChart"),
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
  State<FbChartView> createState() => FbChartController();
}