import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_list_controller.dart';

class FbListView extends StatefulWidget {
  const FbListView({Key? key}) : super(key: key);

  Widget build(context, FbListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbList"),
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
  State<FbListView> createState() => FbListController();
}