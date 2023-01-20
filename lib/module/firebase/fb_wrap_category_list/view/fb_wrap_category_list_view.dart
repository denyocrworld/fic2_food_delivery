import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_wrap_category_list_controller.dart';

class FbWrapCategoryListView extends StatefulWidget {
  const FbWrapCategoryListView({Key? key}) : super(key: key);

  Widget build(context, FbWrapCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbWrapCategoryList"),
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
  State<FbWrapCategoryListView> createState() => FbWrapCategoryListController();
}