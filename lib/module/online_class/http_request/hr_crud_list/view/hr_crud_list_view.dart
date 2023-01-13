import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_crud_list_controller.dart';

class HrCrudListView extends StatefulWidget {
  const HrCrudListView({Key? key}) : super(key: key);

  Widget build(context, HrCrudListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrCrudList"),
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
  State<HrCrudListView> createState() => HrCrudListController();
}