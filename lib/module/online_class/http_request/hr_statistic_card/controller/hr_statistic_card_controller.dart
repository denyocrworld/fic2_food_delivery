import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_statistic_card_view.dart';

class HrStatisticCardController extends State<HrStatisticCardView> implements MvcController {
  static late HrStatisticCardController instance;
  late HrStatisticCardView view;

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