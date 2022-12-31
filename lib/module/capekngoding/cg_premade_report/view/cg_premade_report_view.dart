import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/cg_premade_report_controller.dart';

class CgPremadeReportView extends StatefulWidget {
  const CgPremadeReportView({Key? key}) : super(key: key);

  Widget build(context, CgPremadeReportController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgPremadeReport"),
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
  State<CgPremadeReportView> createState() => CgPremadeReportController();
}