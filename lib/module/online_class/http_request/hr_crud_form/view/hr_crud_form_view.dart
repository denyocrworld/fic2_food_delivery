import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_crud_form_controller.dart';

class HrCrudFormView extends StatefulWidget {
  const HrCrudFormView({Key? key}) : super(key: key);

  Widget build(context, HrCrudFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrCrudForm"),
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
  State<HrCrudFormView> createState() => HrCrudFormController();
}