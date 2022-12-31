import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/cg_form_controller.dart';

class CgFormView extends StatefulWidget {
  const CgFormView({Key? key}) : super(key: key);

  Widget build(context, CgFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgForm"),
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
  State<CgFormView> createState() => CgFormController();
}