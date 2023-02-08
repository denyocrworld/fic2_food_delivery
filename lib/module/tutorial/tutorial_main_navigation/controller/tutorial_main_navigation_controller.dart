import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/tutorial_main_navigation_view.dart';

class TutorialMainNavigationController extends State<TutorialMainNavigationView> implements MvcController {
  static late TutorialMainNavigationController instance;
  late TutorialMainNavigationView view;

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