import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/badge_ui_controller.dart';

class BadgeUiView extends StatefulWidget {
  const BadgeUiView({Key? key}) : super(key: key);

  Widget build(context, BadgeUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BadgeUi"),
        actions: const [],
      ),
      body: ListView(
        children: const [
          //body
        ],
      ),
    );
  }

  @override
  State<BadgeUiView> createState() => BadgeUiController();
}