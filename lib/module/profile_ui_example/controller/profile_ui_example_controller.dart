import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/profile_ui_example_view.dart';

class ProfileUiExampleController extends State<ProfileUiExampleView>
    implements MvcController {
  static late ProfileUiExampleController instance;
  late ProfileUiExampleView view;
  int selectedIndex = 0;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  updateView(int index) {
    selectedIndex = index;
    setState(() {});
  }
}
