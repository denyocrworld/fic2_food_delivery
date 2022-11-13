import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_enabled_and_disabled_controller.dart';

class TrsmEnabledAndDisabledView extends StatefulWidget {
  const TrsmEnabledAndDisabledView({Key? key}) : super(key: key);

  Widget build(context, TrsmEnabledAndDisabledController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmEnabledAndDisabled"),
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
  State<TrsmEnabledAndDisabledView> createState() => TrsmEnabledAndDisabledController();
}