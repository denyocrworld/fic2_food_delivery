import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgImageView extends StatefulWidget {
  const CgImageView({Key? key}) : super(key: key);

  Widget build(context, CgImageController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgImage"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgImageView> createState() => CgImageController();
}
