import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eln_dashboard_view.dart';

class ElnDashboardController extends State<ElnDashboardView>
    implements MvcController {
  static late ElnDashboardController instance;
  late ElnDashboardView view;

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
