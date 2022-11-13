import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_navigation_controller.dart';

class TrsmNavigationView extends StatefulWidget {
  const TrsmNavigationView({Key? key}) : super(key: key);

  Widget build(context, TrsmNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmNavigation"),
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
  State<TrsmNavigationView> createState() => TrsmNavigationController();
}