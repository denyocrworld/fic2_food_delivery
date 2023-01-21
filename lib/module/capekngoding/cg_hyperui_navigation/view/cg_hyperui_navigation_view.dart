import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgHyperuiNavigationView extends StatefulWidget {
  const CgHyperuiNavigationView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiNavigationController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiNavigation"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgHyperuiNavigationView> createState() =>
      CgHyperuiNavigationController();
}
