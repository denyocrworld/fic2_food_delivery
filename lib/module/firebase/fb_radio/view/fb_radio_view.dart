import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_radio_controller.dart';

class FbRadioView extends StatefulWidget {
  const FbRadioView({Key? key}) : super(key: key);

  Widget build(context, FbRadioController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbRadio"),
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
  State<FbRadioView> createState() => FbRadioController();
}