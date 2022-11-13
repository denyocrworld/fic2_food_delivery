import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_counter_controller.dart';

class TrsmCounterView extends StatefulWidget {
  const TrsmCounterView({Key? key}) : super(key: key);

  Widget build(context, TrsmCounterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmCounter"),
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
  State<TrsmCounterView> createState() => TrsmCounterController();
}