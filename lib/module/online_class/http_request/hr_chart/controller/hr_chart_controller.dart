import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_chart_view.dart';

class HrChartController extends State<HrChartView> implements MvcController {
  static late HrChartController instance;
  late HrChartView view;

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