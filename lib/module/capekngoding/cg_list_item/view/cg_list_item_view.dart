import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/cg_list_item_controller.dart';

class CgListItemView extends StatefulWidget {
  const CgListItemView({Key? key}) : super(key: key);

  Widget build(context, CgListItemController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgListItem"),
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
  State<CgListItemView> createState() => CgListItemController();
}