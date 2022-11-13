import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_cart_controller.dart';

class TrsmCartView extends StatefulWidget {
  const TrsmCartView({Key? key}) : super(key: key);

  Widget build(context, TrsmCartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmCart"),
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
  State<TrsmCartView> createState() => TrsmCartController();
}