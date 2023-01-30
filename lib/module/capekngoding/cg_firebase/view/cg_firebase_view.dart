import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_firebase_controller.dart';

class CgFirebaseView extends StatefulWidget {
  const CgFirebaseView({Key? key}) : super(key: key);

  Widget build(context, CgFirebaseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgFirebase"),
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
  State<CgFirebaseView> createState() => CgFirebaseController();
}