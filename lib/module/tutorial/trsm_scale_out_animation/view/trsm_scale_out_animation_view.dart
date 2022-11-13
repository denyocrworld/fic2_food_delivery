import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_scale_out_animation_controller.dart';

class TrsmScaleOutAnimationView extends StatefulWidget {
  const TrsmScaleOutAnimationView({Key? key}) : super(key: key);

  Widget build(context, TrsmScaleOutAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmScaleOutAnimation"),
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
  State<TrsmScaleOutAnimationView> createState() => TrsmScaleOutAnimationController();
}