import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_fade_out_animation_controller.dart';

class TrsmFadeOutAnimationView extends StatefulWidget {
  const TrsmFadeOutAnimationView({Key? key}) : super(key: key);

  Widget build(context, TrsmFadeOutAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmFadeOutAnimation"),
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
  State<TrsmFadeOutAnimationView> createState() => TrsmFadeOutAnimationController();
}