import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tkpos_dashboard_view.dart';

class TkposDashboardController extends State<TkposDashboardView> implements MvcController {
  static late TkposDashboardController instance;
  late TkposDashboardView view;

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