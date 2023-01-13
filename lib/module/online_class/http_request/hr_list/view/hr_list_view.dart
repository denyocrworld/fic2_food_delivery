import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_list_controller.dart';

class HrListView extends StatefulWidget {
  const HrListView({Key? key}) : super(key: key);

  Widget build(context, HrListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrList"),
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
  State<HrListView> createState() => HrListController();
}