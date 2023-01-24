import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ex_layout_view.dart';

class ExLayoutController extends State<ExLayoutView> implements MvcController {
  static late ExLayoutController instance;
  late ExLayoutView view;

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