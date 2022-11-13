import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_slide_animation_controller.dart';

class TrsmSlideAnimationView extends StatefulWidget {
  const TrsmSlideAnimationView({Key? key}) : super(key: key);

  Widget build(context, TrsmSlideAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmSlideAnimation"),
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
  State<TrsmSlideAnimationView> createState() => TrsmSlideAnimationController();
}