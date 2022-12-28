import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/sc_task_view.dart';

class ScTaskController extends State<ScTaskView> implements MvcController {
  static late ScTaskController instance;
  late ScTaskView view;

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