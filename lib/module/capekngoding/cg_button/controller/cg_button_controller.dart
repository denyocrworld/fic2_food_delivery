import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_button_view.dart';

class CgButtonController extends State<CgButtonView> implements MvcController {
  static late CgButtonController instance;
  late CgButtonView view;

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