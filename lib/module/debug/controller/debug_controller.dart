import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/debug_view.dart';

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
}
