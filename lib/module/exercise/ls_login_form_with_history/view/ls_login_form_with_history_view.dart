import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_login_form_with_history_controller.dart';

class LsLoginFormWithHistoryView extends StatefulWidget {
  const LsLoginFormWithHistoryView({Key? key}) : super(key: key);

  Widget build(context, LsLoginFormWithHistoryController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsLoginFormWithHistory"),
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
  State<LsLoginFormWithHistoryView> createState() => LsLoginFormWithHistoryController();
}