import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../controller/accordions_ui_controller.dart';

class AccordionsUiView extends StatefulWidget {
  const AccordionsUiView({Key? key}) : super(key: key);

  Widget build(context, AccordionsUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AccordionsUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<AccordionsUiView> createState() => AccordionsUiController();
}