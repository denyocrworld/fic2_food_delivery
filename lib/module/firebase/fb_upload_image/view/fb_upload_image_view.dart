import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_upload_image_controller.dart';

class FbUploadImageView extends StatefulWidget {
  const FbUploadImageView({Key? key}) : super(key: key);

  Widget build(context, FbUploadImageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbUploadImage"),
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
  State<FbUploadImageView> createState() => FbUploadImageController();
}