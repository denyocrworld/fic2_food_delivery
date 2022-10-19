import 'package:example/core.dart';
import 'package:flutter/material.dart';

class ReportController extends State<ReportView> implements MvcController {
  static late ReportController instance;
  late ReportView view;

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
