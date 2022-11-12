import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/detail_ui_controller.dart';

class DetailUiView extends StatefulWidget {
  const DetailUiView({Key? key}) : super(key: key);

  Widget build(context, DetailUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailUi"),
        actions: const [],
      ),
      body: ListView(
        children: const [
          //body
        ],
      ),
    );
  }

  @override
  State<DetailUiView> createState() => DetailUiController();
}