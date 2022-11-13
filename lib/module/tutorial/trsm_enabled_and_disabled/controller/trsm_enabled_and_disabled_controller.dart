import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_enabled_and_disabled_view.dart';

class TrsmEnabledAndDisabledController extends State<TrsmEnabledAndDisabledView> implements MvcController {
  static late TrsmEnabledAndDisabledController instance;
  late TrsmEnabledAndDisabledView view;

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