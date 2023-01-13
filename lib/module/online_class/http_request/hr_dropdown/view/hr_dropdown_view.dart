import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_dropdown_controller.dart';

class HrDropdownView extends StatefulWidget {
  const HrDropdownView({Key? key}) : super(key: key);

  Widget build(context, HrDropdownController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrDropdown"),
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
  State<HrDropdownView> createState() => HrDropdownController();
}