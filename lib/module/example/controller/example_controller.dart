import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/example_view.dart';

class ExampleController extends State<ExampleView> implements MvcController {
  static late ExampleController instance;
  late ExampleView view;

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