import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_crud_form_controller.dart';

class FbCrudFormView extends StatefulWidget {
  const FbCrudFormView({Key? key}) : super(key: key);

  Widget build(context, FbCrudFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbCrudForm"),
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
  State<FbCrudFormView> createState() => FbCrudFormController();
}