import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/demo_dashboard_view.dart';

class DemoDashboardController extends State<DemoDashboardView> implements MvcController {
  static late DemoDashboardController instance;
  late DemoDashboardView view;

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