import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_horizontal_category_list_controller.dart';

class HrHorizontalCategoryListView extends StatefulWidget {
  const HrHorizontalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, HrHorizontalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrHorizontalCategoryList"),
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
  State<HrHorizontalCategoryListView> createState() => HrHorizontalCategoryListController();
}