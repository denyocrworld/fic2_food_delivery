import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_visibility_controller.dart';

class TrsmVisibilityView extends StatefulWidget {
  const TrsmVisibilityView({Key? key}) : super(key: key);

  Widget build(context, TrsmVisibilityController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmVisibility"),
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
  State<TrsmVisibilityView> createState() => TrsmVisibilityController();
}