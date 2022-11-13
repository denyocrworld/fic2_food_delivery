import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_crud_controller.dart';

class TrsmCrudView extends StatefulWidget {
  const TrsmCrudView({Key? key}) : super(key: key);

  Widget build(context, TrsmCrudController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmCrud"),
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
  State<TrsmCrudView> createState() => TrsmCrudController();
}