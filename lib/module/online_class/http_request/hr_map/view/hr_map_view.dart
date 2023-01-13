import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_map_controller.dart';

class HrMapView extends StatefulWidget {
  const HrMapView({Key? key}) : super(key: key);

  Widget build(context, HrMapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrMap"),
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
  State<HrMapView> createState() => HrMapController();
}