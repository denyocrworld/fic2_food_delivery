import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/tutorial_main_navigation_controller.dart';

class TutorialMainNavigationView extends StatefulWidget {
  const TutorialMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, TutorialMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TutorialMainNavigation"),
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
  State<TutorialMainNavigationView> createState() => TutorialMainNavigationController();
}