import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_premade_report_view.dart';

class CgPremadeReportController extends State<CgPremadeReportView> implements MvcController {
  static late CgPremadeReportController instance;
  late CgPremadeReportView view;

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