import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_login_view.dart';

class HrLoginController extends State<HrLoginView> implements MvcController {
  static late HrLoginController instance;
  late HrLoginView view;

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