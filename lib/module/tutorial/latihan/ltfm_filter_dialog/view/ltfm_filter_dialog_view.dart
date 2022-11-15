import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltfm_filter_dialog_controller.dart';

class LtfmFilterDialogView extends StatefulWidget {
  const LtfmFilterDialogView({Key? key}) : super(key: key);

  Widget build(context, LtfmFilterDialogController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmFilterDialog"),
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
  State<LtfmFilterDialogView> createState() => LtfmFilterDialogController();
}