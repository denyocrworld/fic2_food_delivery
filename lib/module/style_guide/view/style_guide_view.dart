import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/style_guide_controller.dart';

class StyleGuideView extends StatefulWidget {
  const StyleGuideView({Key? key}) : super(key: key);

  Widget build(context, StyleGuideController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("StyleGuide"),
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
  State<StyleGuideView> createState() => StyleGuideController();
}