import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/hris_hr_dashboard_view.dart';

class HrisHrDashboardController extends State<HrisHrDashboardView> implements MvcController {
  static late HrisHrDashboardController instance;
  late HrisHrDashboardView view;

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