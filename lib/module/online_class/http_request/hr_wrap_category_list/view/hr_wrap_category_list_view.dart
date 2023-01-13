import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_wrap_category_list_controller.dart';

class HrWrapCategoryListView extends StatefulWidget {
  const HrWrapCategoryListView({Key? key}) : super(key: key);

  Widget build(context, HrWrapCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrWrapCategoryList"),
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
  State<HrWrapCategoryListView> createState() => HrWrapCategoryListController();
}