import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/accordions_ui_view.dart';

class AccordionsUiController extends State<AccordionsUiView> implements MvcController {
  static late AccordionsUiController instance;
  late AccordionsUiView view;

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