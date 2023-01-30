import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_http_controller.dart';

class CgHttpView extends StatefulWidget {
  const CgHttpView({Key? key}) : super(key: key);

  Widget build(context, CgHttpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgHttp"),
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
  State<CgHttpView> createState() => CgHttpController();
}