import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_login_and_save_token_controller.dart';

class LsLoginAndSaveTokenView extends StatefulWidget {
  const LsLoginAndSaveTokenView({Key? key}) : super(key: key);

  Widget build(context, LsLoginAndSaveTokenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsLoginAndSaveToken"),
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
  State<LsLoginAndSaveTokenView> createState() => LsLoginAndSaveTokenController();
}