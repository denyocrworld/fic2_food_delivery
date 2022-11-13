import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_fade_in_animation_controller.dart';

class TrsmFadeInAnimationView extends StatefulWidget {
  const TrsmFadeInAnimationView({Key? key}) : super(key: key);

  Widget build(context, TrsmFadeInAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmFadeInAnimation"),
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
  State<TrsmFadeInAnimationView> createState() => TrsmFadeInAnimationController();
}