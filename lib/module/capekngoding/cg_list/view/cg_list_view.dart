import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/cg_list_controller.dart';

class CgListView extends StatefulWidget {
  const CgListView({Key? key}) : super(key: key);

  Widget build(context, CgListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgList"),
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
  State<CgListView> createState() => CgListController();
}