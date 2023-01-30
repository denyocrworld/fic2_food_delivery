import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgGetView extends StatefulWidget {
  const CgGetView({Key? key}) : super(key: key);

  Widget build(context, CgGetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgGet"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SnippetContainer("get_image_camera"),
              Text(
                  """
XFile? image = await ImagePicker().pickImage(
  source: ImageSource.camera,
  imageQuality: 40,
);
String? filePath = image?.path;
              """
                      .trim()),
              const SnippetContainer("get_image_gallery"),
              Text(
                  """
XFile? image = await ImagePicker().pickImage(
  source: ImageSource.gallery,
  imageQuality: 40,
);
String? filePath = image?.path;
              """
                      .trim()),
              const SnippetContainer("get_video_camera"),
              Text(
                  """
 XFile? image = await ImagePicker().pickVideo(
  source: ImageSource.camera,
);
String? filePath = image?.path;
              """
                      .trim()),
              const SnippetContainer("get_video_gallery"),
              Text(
                  """
 XFile? image = await ImagePicker().pickVideo(
  source: ImageSource.gallery,
);
String? filePath = image?.path;
              """
                      .trim()),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgGetView> createState() => CgGetController();
}
