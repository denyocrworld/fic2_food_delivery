import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eln_class_detail_controller.dart';

class ElnClassDetailView extends StatefulWidget {
  const ElnClassDetailView({Key? key}) : super(key: key);

  Widget build(context, ElnClassDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ElnClassDetail"),
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
  State<ElnClassDetailView> createState() => ElnClassDetailController();
}
