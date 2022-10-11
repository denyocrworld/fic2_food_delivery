import 'package:flutter/material.dart';
import '../controller/shelf_dashboard_controller.dart';

class ShelfDashboardView extends StatefulWidget {
  const ShelfDashboardView({Key? key}) : super(key: key);

  Widget build(context, ShelfDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ShelfDashboard"),
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
  State<ShelfDashboardView> createState() => ShelfDashboardController();
}