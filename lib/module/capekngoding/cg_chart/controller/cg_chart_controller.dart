import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_chart_view.dart';

class CgChartController extends State<CgChartView> implements MvcController {
  static late CgChartController instance;
  late CgChartView view;

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
