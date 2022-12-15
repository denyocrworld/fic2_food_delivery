import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/fhe_button_view.dart';

class FheButtonController extends State<FheButtonView> implements MvcController {
  static late FheButtonController instance;
  late FheButtonView view;

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