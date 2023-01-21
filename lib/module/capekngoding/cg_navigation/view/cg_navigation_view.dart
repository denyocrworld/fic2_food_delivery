import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgNavigationView extends StatefulWidget {
  const CgNavigationView({Key? key}) : super(key: key);

  Widget build(context, CgNavigationController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgNavigation"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgNavigationView> createState() => CgNavigationController();
}
