import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/hris_employee_dashboard_view.dart';

class HrisEmployeeDashboardController extends State<HrisEmployeeDashboardView> implements MvcController {
  static late HrisEmployeeDashboardController instance;
  late HrisEmployeeDashboardView view;

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