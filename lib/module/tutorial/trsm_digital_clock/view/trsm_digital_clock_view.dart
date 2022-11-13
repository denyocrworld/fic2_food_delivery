import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_digital_clock_controller.dart';

class TrsmDigitalClockView extends StatefulWidget {
  const TrsmDigitalClockView({Key? key}) : super(key: key);

  Widget build(context, TrsmDigitalClockController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmDigitalClock"),
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
  State<TrsmDigitalClockView> createState() => TrsmDigitalClockController();
}