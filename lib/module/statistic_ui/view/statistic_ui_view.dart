import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/statistic_ui_controller.dart';

class StatisticUiView extends StatefulWidget {
  const StatisticUiView({Key? key}) : super(key: key);

  Widget build(context, StatisticUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("StatisticUi"),
        actions: const [],
      ),
      body: ListView(
        children: const [
          //body
        ],
      ),
    );
  }

  @override
  State<StatisticUiView> createState() => StatisticUiController();
}