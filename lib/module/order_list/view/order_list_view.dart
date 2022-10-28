import 'package:flutter/material.dart';
import '../controller/order_list_controller.dart';

class OrderListView extends StatefulWidget {
  const OrderListView({Key? key}) : super(key: key);
  Widget build(context, OrderListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("OrderList"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [],
        ),
      ),
    );
  }

  @override
  State<OrderListView> createState() => OrderListController();
}
