import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/testxxx_controller.dart';

class TestxxxView extends StatefulWidget {
  const TestxxxView({Key? key}) : super(key: key);

  Widget build(context, TestxxxController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Testxxx"),
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
  State<TestxxxView> createState() => TestxxxController();
}