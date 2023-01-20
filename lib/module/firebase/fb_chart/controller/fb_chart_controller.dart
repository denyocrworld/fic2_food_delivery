import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_chart_view.dart';

class FbChartController extends State<FbChartView> implements MvcController {
  static late FbChartController instance;
  late FbChartView view;

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