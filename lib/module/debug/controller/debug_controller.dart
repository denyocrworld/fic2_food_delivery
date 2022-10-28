import 'package:example/core.dart';
import 'package:flutter/material.dart';

class DebugController extends State<DebugView> implements MvcController {
  static late DebugController instance;
  late DebugView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
// test
  List items = [
    {
      "title": "5rb",
      "subtitle": "Rp5.000",
    },
    {
      "title": "10rb",
      "subtitle": "Rp10.000",
    },
    {
      "title": "15rb",
      "subtitle": "Rp15.000",
    },
    {
      "title": "20rb",
      "subtitle": "Rp20.000",
    },
  ];

  Widget mainView = const DebugDashboardView();
  updateView(Widget newView) {
    mainView = newView;
    update();
  }
}
