import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/mvc_dashboard_view.dart';

class MvcDashboardController extends State<MvcDashboardView> implements MvcController {
  static late MvcDashboardController instance;
  late MvcDashboardView view;

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