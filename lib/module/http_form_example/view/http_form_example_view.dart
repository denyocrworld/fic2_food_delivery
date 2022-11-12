import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/http_form_example_controller.dart';

class HttpFormExampleView extends StatefulWidget {
  const HttpFormExampleView({Key? key}) : super(key: key);

  Widget build(context, HttpFormExampleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HttpFormExample"),
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
  State<HttpFormExampleView> createState() => HttpFormExampleController();
}