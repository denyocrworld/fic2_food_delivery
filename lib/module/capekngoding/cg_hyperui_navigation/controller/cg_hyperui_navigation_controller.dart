import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_hyperui_navigation_view.dart';

class CgHyperuiNavigationController extends State<CgHyperuiNavigationView> implements MvcController {
  static late CgHyperuiNavigationController instance;
  late CgHyperuiNavigationView view;

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