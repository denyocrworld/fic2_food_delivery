import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_radio_view.dart';

class HrRadioController extends State<HrRadioView> implements MvcController {
  static late HrRadioController instance;
  late HrRadioView view;

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