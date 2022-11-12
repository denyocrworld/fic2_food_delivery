import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/http_example_controller.dart';

class HttpExampleView extends StatefulWidget {
  const HttpExampleView({Key? key}) : super(key: key);

  Widget build(context, HttpExampleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HttpExample"),
        actions: const [],
      ),
      body: ListView(
        children: const [
          //body
        ],
      ),
    );
  }

  @override
  State<HttpExampleView> createState() => HttpExampleController();
}