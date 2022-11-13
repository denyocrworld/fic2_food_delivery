import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_scale_in_animation_controller.dart';

class TrsmScaleInAnimationView extends StatefulWidget {
  const TrsmScaleInAnimationView({Key? key}) : super(key: key);

  Widget build(context, TrsmScaleInAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmScaleInAnimation"),
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
  State<TrsmScaleInAnimationView> createState() => TrsmScaleInAnimationController();
}