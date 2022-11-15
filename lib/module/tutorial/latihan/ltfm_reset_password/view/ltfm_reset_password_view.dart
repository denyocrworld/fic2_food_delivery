import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltfm_reset_password_controller.dart';

class LtfmResetPasswordView extends StatefulWidget {
  const LtfmResetPasswordView({Key? key}) : super(key: key);

  Widget build(context, LtfmResetPasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmResetPassword"),
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
  State<LtfmResetPasswordView> createState() => LtfmResetPasswordController();
}