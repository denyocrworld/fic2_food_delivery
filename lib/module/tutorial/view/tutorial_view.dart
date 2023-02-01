import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
Hardisk: SSD
Ram: 8GB | 16GB
Processor: Amd Ryzen 3, Ryzen 5
*/
class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);
  Widget build(context, TutorialController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
