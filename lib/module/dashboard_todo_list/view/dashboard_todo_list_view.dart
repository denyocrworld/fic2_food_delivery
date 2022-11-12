import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/dashboard_todo_list_controller.dart';

class DashboardTodoListView extends StatefulWidget {
  const DashboardTodoListView({Key? key}) : super(key: key);

  Widget build(context, DashboardTodoListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DashboardTodoList"),
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
  State<DashboardTodoListView> createState() => DashboardTodoListController();
}