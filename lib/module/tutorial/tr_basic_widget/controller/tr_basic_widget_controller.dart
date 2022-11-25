import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tr_basic_widget_view.dart';

class TrBasicWidgetController extends State<TrBasicWidgetView> implements MvcController {
  static late TrBasicWidgetController instance;
  late TrBasicWidgetView view;

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