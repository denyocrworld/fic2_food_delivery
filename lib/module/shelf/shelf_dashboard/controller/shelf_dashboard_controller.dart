import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/shelf_dashboard_view.dart';

class ShelfDashboardController extends State<ShelfDashboardView> implements MvcController {
  static late ShelfDashboardController instance;
  late ShelfDashboardView view;

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