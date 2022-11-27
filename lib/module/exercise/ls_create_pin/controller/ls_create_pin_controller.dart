import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_create_pin_view.dart';

class LsCreatePinController extends State<LsCreatePinView> implements MvcController {
  static late LsCreatePinController instance;
  late LsCreatePinView view;

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