import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oc_firebase_controller.dart';

class OcFirebaseView extends StatefulWidget {
  const OcFirebaseView({Key? key}) : super(key: key);

  Widget build(context, OcFirebaseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcFirebase"),
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
  State<OcFirebaseView> createState() => OcFirebaseController();
}