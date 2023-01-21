import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgCircleAvatarView extends StatefulWidget {
  const CgCircleAvatarView({Key? key}) : super(key: key);

  Widget build(context, CgCircleAvatarController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgCircleAvatar"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgCircleAvatarView> createState() => CgCircleAvatarController();
}
