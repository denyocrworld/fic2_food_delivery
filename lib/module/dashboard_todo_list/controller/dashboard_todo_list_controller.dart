import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/dashboard_todo_list_view.dart';

class DashboardTodoListController extends State<DashboardTodoListView> implements MvcController {
  static late DashboardTodoListController instance;
  late DashboardTodoListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}