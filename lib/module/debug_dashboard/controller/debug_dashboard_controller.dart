import 'dart:async';

import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/debug_dashboard_view.dart';

class DebugDashboardController extends State<DebugDashboardView>
    implements MvcController {
  static late DebugDashboardController instance;
  late DebugDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool loading = false;

  Timer? timer;
  startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      loading = loading ? false : true;
      update();
    });
  }

  TextEditingController textEditingController = TextEditingController();
}
