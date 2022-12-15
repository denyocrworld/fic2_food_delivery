import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/fhe_form_controller.dart';

class FheFormView extends StatefulWidget {
  const FheFormView({Key? key}) : super(key: key);

  Widget build(context, FheFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FheForm"),
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
  State<FheFormView> createState() => FheFormController();
}