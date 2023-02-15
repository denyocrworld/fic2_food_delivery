import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_premade_login_controller.dart';

class CgPremadeLoginView extends StatefulWidget {
  const CgPremadeLoginView({Key? key}) : super(key: key);

  Widget build(context, CgPremadeLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgPremadeLogin"),
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
  State<CgPremadeLoginView> createState() => CgPremadeLoginController();
}
