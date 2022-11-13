import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_horizontal_category_list_controller.dart';

class TrsmHorizontalCategoryListView extends StatefulWidget {
  const TrsmHorizontalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, TrsmHorizontalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmHorizontalCategoryList"),
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
  State<TrsmHorizontalCategoryListView> createState() => TrsmHorizontalCategoryListController();
}