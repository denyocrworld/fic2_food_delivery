import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/cg_hyperui_list_controller.dart';

class CgHyperuiListView extends StatefulWidget {
  const CgHyperuiListView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiList"),
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
  State<CgHyperuiListView> createState() => CgHyperuiListController();
}