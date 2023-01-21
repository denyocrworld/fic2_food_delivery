import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgCardView extends StatefulWidget {
  const CgCardView({Key? key}) : super(key: key);

  Widget build(context, CgCardController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgCard"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgCardView> createState() => CgCardController();
}
