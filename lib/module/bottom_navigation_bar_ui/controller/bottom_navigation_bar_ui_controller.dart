import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/bottom_navigation_bar_ui_view.dart';

class BottomNavigationBarUiController extends State<BottomNavigationBarUiView> implements MvcController {
  static late BottomNavigationBarUiController instance;
  late BottomNavigationBarUiView view;

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