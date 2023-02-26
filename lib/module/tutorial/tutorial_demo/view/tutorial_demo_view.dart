import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialDemoView extends StatefulWidget {
  const TutorialDemoView({Key? key}) : super(key: key);

  Widget build(context, TutorialDemoController controller) {
    controller.view = this;

    var product = {
      "demo": "test",
      'info': 'test',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialDemoView> createState() => TutorialDemoController();
}
