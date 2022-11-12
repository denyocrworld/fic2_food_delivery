import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/pos_another_example_view.dart';

class PosAnotherExampleController extends State<PosAnotherExampleView> implements MvcController {
  static late PosAnotherExampleController instance;
  late PosAnotherExampleView view;

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