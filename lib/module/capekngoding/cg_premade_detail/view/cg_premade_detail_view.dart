import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_premade_detail_controller.dart';

class CgPremadeDetailView extends StatefulWidget {
  const CgPremadeDetailView({Key? key}) : super(key: key);

  Widget build(context, CgPremadeDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgPremadeDetail"),
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
  State<CgPremadeDetailView> createState() => CgPremadeDetailController();
}
