import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltfm_review_form_controller.dart';

class LtfmReviewFormView extends StatefulWidget {
  const LtfmReviewFormView({Key? key}) : super(key: key);

  Widget build(context, LtfmReviewFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmReviewForm"),
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
  State<LtfmReviewFormView> createState() => LtfmReviewFormController();
}