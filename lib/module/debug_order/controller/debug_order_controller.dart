import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/debug_order_view.dart';

class DebugOrderController extends State<DebugOrderView> implements MvcController {
  static late DebugOrderController instance;
  late DebugOrderView view;

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