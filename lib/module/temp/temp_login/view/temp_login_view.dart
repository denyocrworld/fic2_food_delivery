import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/temp_login_controller.dart';

class TempLoginView extends StatefulWidget {
  const TempLoginView({Key? key}) : super(key: key);

  Widget build(context, TempLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TempLogin"),
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
  State<TempLoginView> createState() => TempLoginController();
}