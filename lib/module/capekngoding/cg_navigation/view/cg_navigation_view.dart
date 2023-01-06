import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_navigation_controller.dart';

class CgNavigationView extends StatefulWidget {
  const CgNavigationView({Key? key}) : super(key: key);

  Widget build(context, CgNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgNavigation"),
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
  State<CgNavigationView> createState() => CgNavigationController();
}
