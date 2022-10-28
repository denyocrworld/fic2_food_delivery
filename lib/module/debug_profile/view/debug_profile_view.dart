import 'package:flutter/material.dart';
import '../controller/debug_profile_controller.dart';

class DebugProfileView extends StatefulWidget {
  const DebugProfileView({Key? key}) : super(key: key);

  Widget build(context, DebugProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DebugProfile"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DebugProfileView> createState() => DebugProfileController();
}