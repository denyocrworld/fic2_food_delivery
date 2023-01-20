import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_horizontal_category_list_controller.dart';

class FbHorizontalCategoryListView extends StatefulWidget {
  const FbHorizontalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, FbHorizontalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbHorizontalCategoryList"),
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
  State<FbHorizontalCategoryListView> createState() => FbHorizontalCategoryListController();
}