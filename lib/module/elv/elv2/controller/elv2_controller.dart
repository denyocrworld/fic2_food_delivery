import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elv2_view.dart';

class Elv2Controller extends State<Elv2View> implements MvcController {
  static late Elv2Controller instance;
  late Elv2View view;

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