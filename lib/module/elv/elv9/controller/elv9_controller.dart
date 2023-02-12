import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elv9_view.dart';

class Elv9Controller extends State<Elv9View> implements MvcController {
  static late Elv9Controller instance;
  late Elv9View view;

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