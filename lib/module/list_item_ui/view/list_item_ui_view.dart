import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/list_item_ui_controller.dart';

class ListItemUiView extends StatefulWidget {
  const ListItemUiView({Key? key}) : super(key: key);

  Widget build(context, ListItemUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListItemUi"),
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
  State<ListItemUiView> createState() => ListItemUiController();
}