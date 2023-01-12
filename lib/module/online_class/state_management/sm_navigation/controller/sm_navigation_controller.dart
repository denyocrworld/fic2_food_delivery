import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_navigation_view.dart';

class SmNavigationController extends State<SmNavigationView>
    implements MvcController {
  static late SmNavigationController instance;
  late SmNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
