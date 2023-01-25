import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_grid_controller.dart';

class CgGridView extends StatefulWidget {
  const CgGridView({Key? key}) : super(key: key);

  Widget build(context, CgGridController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgGrid"),
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
  State<CgGridView> createState() => CgGridController();
}
