import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/temp_order_view.dart';

class TempOrderController extends State<TempOrderView> implements MvcController {
  static late TempOrderController instance;
  late TempOrderView view;

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