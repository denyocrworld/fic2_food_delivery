import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_scaffold_controller.dart';

class CgScaffoldView extends StatefulWidget {
  const CgScaffoldView({Key? key}) : super(key: key);

  Widget build(context, CgScaffoldController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgScaffold"),
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
  State<CgScaffoldView> createState() => CgScaffoldController();
}
