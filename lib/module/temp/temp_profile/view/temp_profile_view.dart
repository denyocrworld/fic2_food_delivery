import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/temp_profile_controller.dart';

class TempProfileView extends StatefulWidget {
  const TempProfileView({Key? key}) : super(key: key);

  Widget build(context, TempProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TempProfile"),
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
  State<TempProfileView> createState() => TempProfileController();
}