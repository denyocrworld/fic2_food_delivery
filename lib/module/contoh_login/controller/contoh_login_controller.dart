import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/contoh_login_view.dart';

class ContohLoginController extends State<ContohLoginView> implements MvcController {
  static late ContohLoginController instance;
  late ContohLoginView view;

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