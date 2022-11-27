import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_login_by_pin_controller.dart';

class LsLoginByPinView extends StatefulWidget {
  const LsLoginByPinView({Key? key}) : super(key: key);

  Widget build(context, LsLoginByPinController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsLoginByPin"),
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
  State<LsLoginByPinView> createState() => LsLoginByPinController();
}