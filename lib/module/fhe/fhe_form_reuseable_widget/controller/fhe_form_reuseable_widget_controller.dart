import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/fhe_form_reuseable_widget_view.dart';

class FheFormReuseableWidgetController extends State<FheFormReuseableWidgetView> implements MvcController {
  static late FheFormReuseableWidgetController instance;
  late FheFormReuseableWidgetView view;

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