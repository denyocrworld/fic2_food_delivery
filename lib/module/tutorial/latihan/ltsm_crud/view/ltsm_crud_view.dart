import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_crud_controller.dart';

class LtsmCrudView extends StatefulWidget {
  const LtsmCrudView({Key? key}) : super(key: key);

  Widget build(context, LtsmCrudController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmCrud"),
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
  State<LtsmCrudView> createState() => LtsmCrudController();
}