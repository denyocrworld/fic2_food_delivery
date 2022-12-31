import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_hyperui_utility_view.dart';

class CgHyperuiUtilityController extends State<CgHyperuiUtilityView> implements MvcController {
  static late CgHyperuiUtilityController instance;
  late CgHyperuiUtilityView view;

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