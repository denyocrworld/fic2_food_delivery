import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_login_controller.dart';

class FbLoginView extends StatefulWidget {
  const FbLoginView({Key? key}) : super(key: key);

  Widget build(context, FbLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbLogin"),
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
  State<FbLoginView> createState() => FbLoginController();
}