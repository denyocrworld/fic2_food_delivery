import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_container_controller.dart';

class CgContainerView extends StatefulWidget {
  const CgContainerView({Key? key}) : super(key: key);

  Widget build(context, CgContainerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgContainer"),
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
  State<CgContainerView> createState() => CgContainerController();
}
