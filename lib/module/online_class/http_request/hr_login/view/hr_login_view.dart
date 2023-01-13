import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_login_controller.dart';

class HrLoginView extends StatefulWidget {
  const HrLoginView({Key? key}) : super(key: key);

  Widget build(context, HrLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrLogin"),
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
  State<HrLoginView> createState() => HrLoginController();
}