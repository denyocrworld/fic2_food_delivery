import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/mvc_login_view.dart';

class MvcLoginController extends State<MvcLoginView> implements MvcController {
  static late MvcLoginController instance;
  late MvcLoginView view;

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