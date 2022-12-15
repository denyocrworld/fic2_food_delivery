import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ma_main_navigation_controller.dart';

class MaMainNavigationView extends StatefulWidget {
  const MaMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MaMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MaMainNavigation"),
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
  State<MaMainNavigationView> createState() => MaMainNavigationController();
}