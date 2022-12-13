import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/mvc_login_controller.dart';

class MvcLoginView extends StatefulWidget {
  const MvcLoginView({Key? key}) : super(key: key);

  Widget build(context, MvcLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MvcLogin"),
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
  State<MvcLoginView> createState() => MvcLoginController();
}