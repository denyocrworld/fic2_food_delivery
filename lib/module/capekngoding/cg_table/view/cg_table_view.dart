import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/cg_table_controller.dart';

class CgTableView extends StatefulWidget {
  const CgTableView({Key? key}) : super(key: key);

  Widget build(context, CgTableController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgTable"),
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
  State<CgTableView> createState() => CgTableController();
}