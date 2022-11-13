import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_digital_clock_view.dart';

class TrsmDigitalClockController extends State<TrsmDigitalClockView> implements MvcController {
  static late TrsmDigitalClockController instance;
  late TrsmDigitalClockView view;

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