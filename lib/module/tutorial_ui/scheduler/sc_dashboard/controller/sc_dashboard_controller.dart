import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/sc_dashboard_view.dart';

class ScDashboardController extends State<ScDashboardView> implements MvcController {
  static late ScDashboardController instance;
  late ScDashboardView view;

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