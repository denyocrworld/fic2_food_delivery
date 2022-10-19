import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ps_dashboard_view.dart';

class PsDashboardController extends State<PsDashboardView>
    implements MvcController {
  static late PsDashboardController instance;
  late PsDashboardView view;

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
