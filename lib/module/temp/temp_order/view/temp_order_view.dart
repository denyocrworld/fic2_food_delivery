import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/temp_order_controller.dart';

class TempOrderView extends StatefulWidget {
  const TempOrderView({Key? key}) : super(key: key);

  Widget build(context, TempOrderController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TempOrder"),
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
  State<TempOrderView> createState() => TempOrderController();
}