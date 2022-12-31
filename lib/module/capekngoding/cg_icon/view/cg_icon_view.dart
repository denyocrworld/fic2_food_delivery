import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/cg_icon_controller.dart';

class CgIconView extends StatefulWidget {
  const CgIconView({Key? key}) : super(key: key);

  Widget build(context, CgIconController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgIcon"),
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
  State<CgIconView> createState() => CgIconController();
}