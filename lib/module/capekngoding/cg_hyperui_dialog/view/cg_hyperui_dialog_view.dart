import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgHyperuiDialogView extends StatefulWidget {
  const CgHyperuiDialogView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiDialogController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiDialog"),
        actions: const [],
      ),
      body: Column(
        children: const [],
      ),
    );
  }

  @override
  State<CgHyperuiDialogView> createState() => CgHyperuiDialogController();
}
