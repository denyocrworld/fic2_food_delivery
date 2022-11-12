import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/profile_ui_view.dart';

class ProfileUiController extends State<ProfileUiView> implements MvcController {
  static late ProfileUiController instance;
  late ProfileUiView view;

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