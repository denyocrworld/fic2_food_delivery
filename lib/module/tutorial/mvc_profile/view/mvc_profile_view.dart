import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/mvc_profile_controller.dart';

class MvcProfileView extends StatefulWidget {
  const MvcProfileView({Key? key}) : super(key: key);

  Widget build(context, MvcProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MvcProfile"),
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
  State<MvcProfileView> createState() => MvcProfileController();
}
