import 'package:flutter/material.dart';
import '../controller/demo_order_list_controller.dart';

class DemoOrderListView extends StatefulWidget {
  const DemoOrderListView({Key? key}) : super(key: key);

  Widget build(context, DemoOrderListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DemoOrderList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DemoOrderListView> createState() => DemoOrderListController();
}