import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_vertical_category_list_controller.dart';

class TrsmVerticalCategoryListView extends StatefulWidget {
  const TrsmVerticalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, TrsmVerticalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmVerticalCategoryList"),
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
  State<TrsmVerticalCategoryListView> createState() => TrsmVerticalCategoryListController();
}