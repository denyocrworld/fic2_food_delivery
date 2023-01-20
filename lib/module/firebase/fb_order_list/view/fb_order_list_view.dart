import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_order_list_controller.dart';

class FbOrderListView extends StatefulWidget {
  const FbOrderListView({Key? key}) : super(key: key);

  Widget build(context, FbOrderListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbOrderList"),
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
  State<FbOrderListView> createState() => FbOrderListController();
}