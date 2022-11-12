import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/dashboard_food_delivery_controller.dart';

class DashboardFoodDeliveryView extends StatefulWidget {
  const DashboardFoodDeliveryView({Key? key}) : super(key: key);

  Widget build(context, DashboardFoodDeliveryController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DashboardFoodDelivery"),
        actions: const [],
      ),
      body: ListView(
        children: const [
          //body
        ],
      ),
    );
  }

  @override
  State<DashboardFoodDeliveryView> createState() => DashboardFoodDeliveryController();
}