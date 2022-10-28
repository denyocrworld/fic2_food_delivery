import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/debug_profile_view.dart';

class DebugProfileController extends State<DebugProfileView> implements MvcController {
  static late DebugProfileController instance;
  late DebugProfileView view;

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