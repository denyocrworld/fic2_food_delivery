import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/fhe_main_navigation_view.dart';

class FheMainNavigationController extends State<FheMainNavigationView> implements MvcController {
  static late FheMainNavigationController instance;
  late FheMainNavigationView view;

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