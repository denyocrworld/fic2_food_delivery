import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_upload_image_controller.dart';

class HrUploadImageView extends StatefulWidget {
  const HrUploadImageView({Key? key}) : super(key: key);

  Widget build(context, HrUploadImageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrUploadImage"),
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
  State<HrUploadImageView> createState() => HrUploadImageController();
}