import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_login_by_pin_view.dart';

class LsLoginByPinController extends State<LsLoginByPinView> implements MvcController {
  static late LsLoginByPinController instance;
  late LsLoginByPinView view;

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