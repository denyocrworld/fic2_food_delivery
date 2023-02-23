import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_list_checker_controller.dart';

class CgListCheckerView extends StatefulWidget {
  const CgListCheckerView({Key? key}) : super(key: key);

  Widget build(context, CgListCheckerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgListChecker"),
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
  State<CgListCheckerView> createState() => CgListCheckerController();
}