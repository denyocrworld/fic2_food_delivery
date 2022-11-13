import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_animation_controller.dart';

class TrsmAnimationView extends StatefulWidget {
  const TrsmAnimationView({Key? key}) : super(key: key);

  Widget build(context, TrsmAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmAnimation"),
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
  State<TrsmAnimationView> createState() => TrsmAnimationController();
}