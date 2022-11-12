import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/pos_example_view.dart';

class PosExampleController extends State<PosExampleView> implements MvcController {
  static late PosExampleController instance;
  late PosExampleView view;

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