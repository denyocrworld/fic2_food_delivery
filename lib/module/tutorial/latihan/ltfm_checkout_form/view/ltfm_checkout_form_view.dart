import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltfm_checkout_form_controller.dart';

class LtfmCheckoutFormView extends StatefulWidget {
  const LtfmCheckoutFormView({Key? key}) : super(key: key);

  Widget build(context, LtfmCheckoutFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmCheckoutForm"),
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
  State<LtfmCheckoutFormView> createState() => LtfmCheckoutFormController();
}