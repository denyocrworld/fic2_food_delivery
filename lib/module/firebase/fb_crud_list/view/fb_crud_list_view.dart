import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_crud_list_controller.dart';

class FbCrudListView extends StatefulWidget {
  const FbCrudListView({Key? key}) : super(key: key);

  Widget build(context, FbCrudListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbCrudList"),
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
  State<FbCrudListView> createState() => FbCrudListController();
}