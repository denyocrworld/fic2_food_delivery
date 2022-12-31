import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_premade_dashboard_view.dart';

class CgPremadeDashboardController extends State<CgPremadeDashboardView> implements MvcController {
  static late CgPremadeDashboardController instance;
  late CgPremadeDashboardView view;

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