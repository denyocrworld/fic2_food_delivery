import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltfm_sliding_form_controller.dart';

class LtfmSlidingFormView extends StatefulWidget {
  const LtfmSlidingFormView({Key? key}) : super(key: key);

  Widget build(context, LtfmSlidingFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSlidingForm"),
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
  State<LtfmSlidingFormView> createState() => LtfmSlidingFormController();
}