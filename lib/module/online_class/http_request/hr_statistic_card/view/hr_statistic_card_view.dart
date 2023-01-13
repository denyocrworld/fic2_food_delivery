import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_statistic_card_controller.dart';

class HrStatisticCardView extends StatefulWidget {
  const HrStatisticCardView({Key? key}) : super(key: key);

  Widget build(context, HrStatisticCardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrStatisticCard"),
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
  State<HrStatisticCardView> createState() => HrStatisticCardController();
}