import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/contoh_dashboard_view.dart';

class ContohDashboardController extends State<ContohDashboardView>
    implements MvcController {
  static late ContohDashboardController instance;
  late ContohDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String search = "";
}
