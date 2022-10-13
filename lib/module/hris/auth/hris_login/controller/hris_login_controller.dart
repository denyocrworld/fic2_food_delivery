import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/hris_login_view.dart';

class HrisLoginController extends State<HrisLoginView> implements MvcController {
  static late HrisLoginController instance;
  late HrisLoginView view;

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