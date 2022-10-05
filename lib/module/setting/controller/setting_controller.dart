import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';
import '../view/setting_view.dart';

class SettingController extends State<SettingView> implements MvcController {
  static late SettingController instance;
  late SettingView view;

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
