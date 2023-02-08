import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/tutorial_product_list_controller.dart';

class TutorialProductListView extends StatefulWidget {
  const TutorialProductListView({Key? key}) : super(key: key);

  Widget build(context, TutorialProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TutorialProductList"),
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
  State<TutorialProductListView> createState() => TutorialProductListController();
}