import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_first_time_setup_controller.dart';

class LsFirstTimeSetupView extends StatefulWidget {
  const LsFirstTimeSetupView({Key? key}) : super(key: key);

  Widget build(context, LsFirstTimeSetupController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsFirstTimeSetup"),
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
  State<LsFirstTimeSetupView> createState() => LsFirstTimeSetupController();
}