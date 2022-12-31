import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/cg_layout_controller.dart';

class CgLayoutView extends StatefulWidget {
  const CgLayoutView({Key? key}) : super(key: key);

  Widget build(context, CgLayoutController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgLayout"),
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
  State<CgLayoutView> createState() => CgLayoutController();
}