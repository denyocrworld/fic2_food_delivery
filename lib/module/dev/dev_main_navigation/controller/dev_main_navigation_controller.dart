import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/dev_main_navigation_view.dart';

class DevMainNavigationController extends State<DevMainNavigationView> implements MvcController {
  static late DevMainNavigationController instance;
  late DevMainNavigationView view;

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