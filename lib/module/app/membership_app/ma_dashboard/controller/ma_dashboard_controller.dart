import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ma_dashboard_view.dart';

class MaDashboardController extends State<MaDashboardView> implements MvcController {
  static late MaDashboardController instance;
  late MaDashboardView view;

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