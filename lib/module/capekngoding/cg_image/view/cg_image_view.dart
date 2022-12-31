import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/cg_image_controller.dart';

class CgImageView extends StatefulWidget {
  const CgImageView({Key? key}) : super(key: key);

  Widget build(context, CgImageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgImage"),
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
  State<CgImageView> createState() => CgImageController();
}