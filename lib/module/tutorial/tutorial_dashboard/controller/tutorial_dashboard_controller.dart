import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialDashboardController extends State<TutorialDashboardView>
    implements MvcController {
  static late TutorialDashboardController instance;
  late TutorialDashboardView view;

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
