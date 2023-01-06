import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_card_controller.dart';

class CgCardView extends StatefulWidget {
  const CgCardView({Key? key}) : super(key: key);

  Widget build(context, CgCardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgCard"),
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
  State<CgCardView> createState() => CgCardController();
}
