import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/EEditProfile5_controller.dart';

class EEditProfile5View extends StatefulWidget {
  const EEditProfile5View({Key? key}) : super(key: key);

  Widget build(context, EEditProfile5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EEditProfile5"),
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
  State<EEditProfile5View> createState() => EEditProfile5Controller();
}